# Reference

## fetch.sh

```bash
bash .cursor/skills/swagger-to-code-generate/scripts/fetch.sh
```

`.env` 예시:

```bash
AUTH_URL="https://user-api.dev.example.com/login"
SCHEMA_URL="https://user-api.dev.example.com/v3/api-docs"
SCHEMA_FILE="lib/resources/swagger/api.json"
COOKIE_JAR="cookies.txt"
USERNAME="your-username"
PASSWORD="your-password"
```

실행:

```bash
bash .cursor/skills/swagger-to-code-generate/scripts/fetch.sh
```

다른 env 파일 사용:

```bash
ENV_FILE=".env.local" bash .cursor/skills/swagger-to-code-generate/scripts/fetch.sh
```

## extract-spec.js

```bash
node .cursor/skills/swagger-to-code-generate/scripts/extract-spec.js \
  --input api.json \
  --output extracted-api-info.json \
  --tag Share
```

```bash
node .cursor/skills/swagger-to-code-generate/scripts/extract-spec.js \
  --input api.json \
  --output extracted-api-info.json \
  --api /v1.0/share
```

### 옵션

- `--input`: 원본 스펙 파일 (기본 `api.json`)
- `--output`: 추출 결과 파일 (기본 `extracted-api-info.json`)
- `--tag` (또는 `--tags`): 쉼표로 구분된 tag 목록
- `--api` (또는 `--path`): 쉼표로 구분된 API 주소 키워드

최소 한 개 필터(`--tag` 또는 `--api`)는 필수다.

## 출력 구조

`extract-spec.js` 결과는 아래 구조를 가진다.

- `filters`: 적용한 tag/api 필터
- `count`: 매칭된 API 개수
- `apis`: API 목록
  - `method`, `path`, `operationId`, `summary`, `description`, `tags`
  - `parameters`
  - `request` (requestBody 정보)
  - `response` (status code별 response 정보)
- `schemas`: request/response에서 참조하는 schema 상세

## generate-guide.md 권장 항목

`generate-guide.md`가 있을 때 아래 항목을 포함하면 생성 일관성이 높아진다.

```markdown
# Generate Guide

## Target
- language: dart
- framework: flutter
- output_root: apps/example_app/lib/api

## Architecture
- layers: client, dto, repository
- http_client: dio

## Naming
- class_suffix: ApiClient
- method_style: operationId

## Error handling
- map_4xx_to: DomainException
- map_5xx_to: NetworkException
```
