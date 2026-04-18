# Tandangi App Instructions

이 디렉토리에서 API 연동 기능을 추가하거나 기존 앱 데이터를 확장할 때는 먼저 `docs/APP_CODE_PATTERNS.md`를 기준으로 삼고, 가능한 한 같은 결로 구현한다.

## 시작 전 확인 순서

1. `docs/APP_CODE_PATTERNS.md`를 읽는다.
2. 기능이 서버 API와 연결되면 서버 contract를 먼저 확인한다.
3. 기능이 제품 정책이나 UX와 연결되면 `/Users/na/project/zetto/tandangi-vault/20_wiki`를 먼저 확인한다.
4. 새 파일을 만들기 전에 현재 git 상태와 기존 변경을 확인한다.
5. 패턴 문서로 부족한 경우에만 실제 유사 코드를 추가 확인한다.

## 앱 API 연동 기본 원칙

- 서버 contract가 확정된 뒤 앱 작업을 진행한다.
- 기본 작업 범위는 `data`, `domain`, `core/di`다.
- 필요 시 `feature` 레이어는 별도 요청 또는 기능 범위에 따라 확장한다.
- API 연동 기능은 가능한 한 아래 흐름을 유지한다:
  - `data/data_source`
  - `data/dto`
  - `data/mapper`
  - `data/repository`
  - `domain/entity`
  - `domain/repository`
  - `core/di/di.dart`

## freezed/build_runner 원칙

- DTO와 Entity는 기존 패턴에 맞게 `freezed`를 우선 사용한다.
- 새 `freezed` 파일을 추가하거나 수정한 뒤에는 생성 파일 갱신이 필요하다.
- 가능하면 앱 디렉토리에서 build_runner를 실행해 생성 파일까지 맞춘다.

## 서버 이후 앱 작업 기본 순서

1. 서버 API path, method, request, response를 확인한다.
2. 필요한 DTO를 만든다.
3. 필요한 Entity를 만든다.
4. Mapper를 만든다.
5. RemoteDataSource를 만든다.
6. Repository interface와 implementation을 만든다.
7. `core/di/di.dart`에 의존성을 등록한다.
8. 필요한 경우 build_runner를 실행한다.
9. 가능한 경우 analyze 또는 관련 검증을 수행한다.

## 요청 템플릿

- 기능 요청 템플릿은 `docs/APP_FEATURE_REQUEST_TEMPLATE.md`를 따른다.
- 사용자가 템플릿을 완전히 채우지 않아도, 서버 contract와 패턴 문서로 보완 가능한 경우 먼저 구현한다.
- 기본 패턴은 `docs/APP_CODE_PATTERNS.md`를 따른다.

## 피해야 할 것

- 패턴 문서를 무시하고 임의 구조를 도입하는 것
- 서버 contract가 정리되지 않았는데 앱 매핑을 추측으로 확정하는 것
- 기존 사용자 변경을 덮어쓰는 것
- generated 파일이 필요한데 build_runner 갱신 없이 끝내는 것
