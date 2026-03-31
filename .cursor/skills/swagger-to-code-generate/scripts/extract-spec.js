#!/usr/bin/env node
const fs = require("fs");

function parseArgs(argv) {
  const args = {};
  for (let i = 2; i < argv.length; i += 1) {
    const token = argv[i];
    if (!token.startsWith("--")) continue;
    const key = token.slice(2);
    const next = argv[i + 1];
    if (!next || next.startsWith("--")) {
      args[key] = true;
    } else {
      args[key] = next;
      i += 1;
    }
  }
  return args;
}

function toList(csv) {
  if (!csv) return [];
  return Array.from(
    new Set(
      String(csv)
        .split(",")
        .map((v) => v.trim())
        .filter(Boolean),
    ),
  );
}

function resolveSchema(schema) {
  if (!schema) return null;
  if (schema.$ref) {
    return {
      $ref: schema.$ref,
      schemaName: schema.$ref.replace("#/components/schemas/", ""),
    };
  }
  return schema;
}

function normalizeRequestBody(requestBody) {
  if (!requestBody || !requestBody.content) return null;
  const content = {};
  for (const [contentType, spec] of Object.entries(requestBody.content)) {
    content[contentType] = {
      schema: resolveSchema(spec.schema),
    };
  }
  return {
    required: Boolean(requestBody.required),
    content,
  };
}

function normalizeResponses(responses) {
  if (!responses) return {};
  const normalized = {};
  for (const [statusCode, response] of Object.entries(responses)) {
    const content = {};
    for (const [contentType, spec] of Object.entries(response.content || {})) {
      content[contentType] = {
        schema: resolveSchema(spec.schema),
      };
    }
    normalized[statusCode] = {
      description: response.description || "",
      content,
    };
  }
  return normalized;
}

function collectRefs(node, refs = new Set()) {
  if (!node || typeof node !== "object") return refs;
  if (Array.isArray(node)) {
    node.forEach((value) => collectRefs(value, refs));
    return refs;
  }
  if (typeof node.$ref === "string") {
    refs.add(node.$ref);
  }
  for (const value of Object.values(node)) {
    collectRefs(value, refs);
  }
  return refs;
}

function collectSchemaRefs(openapi, refs) {
  const schemaPrefix = "#/components/schemas/";
  const queue = [...refs].filter((ref) => ref.startsWith(schemaPrefix));
  const visited = new Set(queue);

  while (queue.length > 0) {
    const ref = queue.pop();
    const schemaName = ref.replace(schemaPrefix, "");
    const schema = openapi?.components?.schemas?.[schemaName];
    if (!schema) continue;

    const childRefs = collectRefs(schema);
    for (const childRef of childRefs) {
      if (!childRef.startsWith(schemaPrefix)) continue;
      if (visited.has(childRef)) continue;
      visited.add(childRef);
      queue.push(childRef);
    }
  }
  return visited;
}

function pickSchemas(openapi, refs) {
  const schemaPrefix = "#/components/schemas/";
  const schemas = {};
  for (const ref of refs) {
    if (!ref.startsWith(schemaPrefix)) continue;
    const schemaName = ref.replace(schemaPrefix, "");
    if (openapi?.components?.schemas?.[schemaName]) {
      schemas[schemaName] = openapi.components.schemas[schemaName];
    }
  }
  return schemas;
}

function hasTagMatch(tags, targetTags) {
  if (targetTags.length === 0) return false;
  if (!Array.isArray(tags)) return false;
  const lowerTags = tags.map((tag) => String(tag).toLowerCase());
  return targetTags.some((tag) => lowerTags.includes(tag.toLowerCase()));
}

function hasApiMatch(pathKey, apiKeywords) {
  if (apiKeywords.length === 0) return false;
  const lowerPath = pathKey.toLowerCase();
  return apiKeywords.some((keyword) =>
    lowerPath.includes(keyword.toLowerCase()),
  );
}

function main() {
  const args = parseArgs(process.argv);
  const input = args.input || "api.json";
  const output = args.output || "extracted-api-info.json";
  const targetTags = toList(args.tag || args.tags);
  const apiKeywords = toList(args.api || args.path);

  if (targetTags.length === 0 && apiKeywords.length === 0) {
    console.error(
      '[extract-spec] Use at least one filter: --tag "Share" or --api "/v1.0/share"',
    );
    process.exit(1);
  }

  if (!fs.existsSync(input)) {
    console.error(`[extract-spec] Input file not found: ${input}`);
    process.exit(1);
  }

  let openapi;
  try {
    openapi = JSON.parse(fs.readFileSync(input, "utf8"));
  } catch (error) {
    console.error(`[extract-spec] Invalid JSON in ${input}: ${error.message}`);
    process.exit(1);
  }

  const methods = [
    "get",
    "post",
    "put",
    "patch",
    "delete",
    "options",
    "head",
    "trace",
  ];
  const apis = [];

  for (const [pathKey, pathItem] of Object.entries(openapi.paths || {})) {
    for (const method of methods) {
      const operation = pathItem?.[method];
      if (!operation) continue;

      const matchByTag = hasTagMatch(operation.tags, targetTags);
      const matchByApi = hasApiMatch(pathKey, apiKeywords);
      if (!matchByTag && !matchByApi) continue;

      apis.push({
        method: method.toUpperCase(),
        path: pathKey,
        operationId: operation.operationId || null,
        summary: operation.summary || null,
        description: operation.description || null,
        tags: operation.tags || [],
        parameters: operation.parameters || [],
        request: normalizeRequestBody(operation.requestBody),
        response: normalizeResponses(operation.responses),
      });
    }
  }

  const refs = collectRefs(apis);
  const schemaRefs = collectSchemaRefs(openapi, refs);
  const schemas = pickSchemas(openapi, schemaRefs);

  const result = {
    source: input,
    filters: { tag: targetTags, api: apiKeywords },
    count: apis.length,
    apis,
    schemas,
  };

  fs.writeFileSync(output, `${JSON.stringify(result, null, 2)}\n`, "utf8");
  console.log(`[extract-spec] Saved: ${output}`);
  console.log(`[extract-spec] Matched APIs: ${apis.length}`);
}

main();
