# Examples

## Example 1: 기본 전체 스펙 수집 후 일부 API만 추출

```bash
cat > .env <<'EOF'
AUTH_URL="https://user-api.dev.example.com/login"
SCHEMA_URL="https://user-api.dev.example.com/v3/api-docs"
SCHEMA_FILE="lib/resources/swagger/api.json"
COOKIE_JAR="cookies.txt"
USERNAME="name"
PASSWORD="password"
EOF

bash .cursor/skills/swagger-to-code-generate/scripts/fetch.sh

node .cursor/skills/swagger-to-code-generate/scripts/extract-spec.js \
  --input lib/resources/swagger/api.json \
  --output share-tag-info.json \
  --tag Share
```

## Example 2: API 주소 기준 추출

```bash
node .cursor/skills/swagger-to-code-generate/scripts/extract-spec.js \
  --input api.json \
  --output share-path-info.json \
  --api /v1.0/share
```

## Example 3: tag + api 복합 추출

```bash
node .cursor/skills/swagger-to-code-generate/scripts/extract-spec.js \
  --input api.json \
  --output share-combined-info.json \
  --tag Share,Problem \
  --api /share/problem
```

## Example 4: /swagger-generate 요청 처리 시 응답 형식

```markdown
## 생성 결과
- 스펙 소스: https://example.com/openapi.json
- 적용 가이드: apps/example_app/generate-guide.md
- 생성 범위: tags=User,Auth

## 변경 파일
- apps/example_app/lib/src/api/user_api_client.dart
- apps/example_app/lib/src/api/auth_api_client.dart
- apps/example_app/lib/src/api/models/user_dto.dart

## 생성 규칙
- operationId 기반 메서드명 사용
- DTO와 API client 분리
- 기존 예외 매핑 규칙 재사용

## 검증
- flutter analyze
- flutter test
- 결과: analyze/test 통과

## 후속 제안
- Auth refresh 토큰 관련 endpoint 추가 생성 권장
```
