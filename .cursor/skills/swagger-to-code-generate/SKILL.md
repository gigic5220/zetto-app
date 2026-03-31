---
name: swagger-to-code-generate
description: Fetches Swagger/OpenAPI specs and generates API client/server code scaffolding. Use when the user runs /swagger-generate or asks to generate code from swagger, openapi, api.json, or API spec.
---

# Swagger To Code Generate

## 사용 시점

- 사용자가 `/swagger-generate`를 입력했을 때
- Swagger/OpenAPI 기반 코드 생성을 요청했을 때
- `api.json` 또는 API spec 기반으로 특정 엔드포인트 코드 생성이 필요할 때

## 기본 원칙

1. 먼저 전체 스펙을 가져온다.
2. `generate-guide.md`가 있으면 최우선으로 따른다.
3. `generate-guide.md`가 없으면 프로젝트 언어/구조를 감지해 생성한다.
4. 기존 관련 코드가 있으면 네이밍, 계층 구조, 에러 처리 방식을 재사용한다.
5. 필요한 API만 추출해서 생성 범위를 최소화한다.

## 작업 절차

아래 체크리스트를 복사해서 진행 상태를 관리한다.

```text
Swagger Generate Progress
- [ ] 1) 스펙 수집 (fetch.sh -> api.json)
- [ ] 2) generate-guide.md 존재 확인 및 로드
- [ ] 3) 생성 대상 API 범위 결정 (paths/tags/operationIds)
- [ ] 4) extract-spec.js로 부분 스펙 생성
- [ ] 5) 언어/프레임워크 및 기존 코드 패턴 분석
- [ ] 6) 코드 생성/수정
- [ ] 7) 빌드/분석/테스트(가능 시)로 검증
```

### 1) 스펙 수집

기본 명령:

```bash
bash .cursor/skills/swagger-to-code-generate/scripts/fetch.sh
```

- 기본적으로 루트 `.env`를 읽는다. (`ENV_FILE`로 변경 가능)
- 필수 변수: `AUTH_URL`, `SCHEMA_URL`, `USERNAME`(또는 `SWAGGER_USERNAME`), `PASSWORD`(또는 `SWAGGER_PASSWORD`)
- 선택 변수: `SCHEMA_FILE`(기본 `api.json`), `COOKIE_JAR`(기본 `cookies.txt`)

### 2) 가이드 우선 적용

`generate-guide.md`를 다음 우선순위로 탐색한다.

1. 워크스페이스 루트 `generate-guide.md`
2. 현재 작업 대상 앱/패키지 루트의 `generate-guide.md`

파일이 있으면:
- 생성 대상 파일 경로
- 레이어 구조(예: service/repository/model)
- 네이밍 규칙
- HTTP 클라이언트 규칙
- 에러 처리/로깅 규칙

을 우선 적용한다.

파일이 없으면:
- 프로젝트 언어(`pubspec.yaml`, `package.json`, `go.mod`, `pom.xml` 등)와
- 기존 API 관련 코드 패턴을 기준으로 결정한다.

### 3) 필요한 API 정보 추출

기본 명령:

```bash
node .cursor/skills/swagger-to-code-generate/scripts/extract-spec.js \
  --input api.json \
  --output extracted-api-info.json \
  --tag Share
```

또는 API 주소 검색:

```bash
node .cursor/skills/swagger-to-code-generate/scripts/extract-spec.js \
  --input api.json \
  --output extracted-api-info.json \
  --api /v1.0/share
```

- `--tag`: 태그 기준으로 API 정보를 추출한다.
- `--api`: API 주소(부분 문자열 포함) 기준으로 API 정보를 추출한다.
- 결과 파일에는 `api 정보(method/path/operationId)`, `request`, `response`, `참조 schema`가 포함된다.

### 4) 코드 생성 규칙

- 기존 코드가 있으면 우선 재사용:
  - DTO/Model 네이밍
  - API 클라이언트 추상화 방식
  - 에러 매핑 규칙
  - 파일 분리 단위
- 신규 생성 시 기본 권장:
  - 요청/응답 모델 분리
  - API 인터페이스와 구현체 분리
  - operationId 기반 메서드명 우선
  - nullable/optional 필드 보수적으로 처리

## 출력 템플릿

최종 응답은 아래 템플릿을 사용한다.

```markdown
## 생성 결과
- 스펙 소스: [URL 또는 파일]
- 적용 가이드: [generate-guide.md 경로 또는 없음]
- 생성 범위: [paths/tags/operationIds 요약]

## 변경 파일
- path/to/file1
- path/to/file2

## 생성 규칙
- [적용한 네이밍/계층/에러 처리 핵심 규칙]

## 검증
- [실행한 분석/빌드/테스트 명령]
- [결과 요약]

## 후속 제안
- [추가 생성 권장 API 또는 리팩터링 포인트]
```

## 유틸리티 스크립트

- `scripts/fetch.sh`: Swagger/OpenAPI JSON을 내려받아 저장
- `scripts/extract-spec.js`: 태그/주소 기준으로 API + request/response 정보를 추출

## 추가 리소스

- 사용 예시는 [examples.md](examples.md)
- 스크립트 상세는 [reference.md](reference.md)
