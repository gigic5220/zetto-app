# App Code Patterns

이 문서는 `zetto-app/apps/tandangi-app`의 현재 API 연동 구현 패턴을 명시한 기준 문서다.

앞으로 앱 기능 생성 시 기본은 이 문서를 먼저 참고한다.
패턴이 바뀌면 이 문서를 즉시 갱신하는 것을 전제로 한다.

## 역할

- 앱 API 연동 기능 생성의 기본 reference
- 반복적인 코드 탐색 비용을 줄이기 위한 명시적 패턴 문서
- Codex와 사람이 함께 보는 `tandangi-app` 구현 규칙

## 기본 원칙

- 새로운 API 연동 기능 생성 시 기본은 이 문서를 따른다.
- 이 문서 범위 안의 작업은 매번 기존 코드 패턴 재탐색을 하지 않아도 된다.
- 이 문서에 없는 예외 상황, 충돌, 새 구조 도입이 필요한 경우에만 실제 코드를 추가 확인한다.
- 서버 API 연동 기능은 기본적으로 서버 contract가 확정된 뒤 구현한다.

## 작업 범위 기본값

기본적으로 아래 레이어를 생성하거나 수정한다.

- `lib/data/data_source`
- `lib/data/dto`
- `lib/data/mapper`
- `lib/data/repository`
- `lib/domain/entity`
- `lib/domain/repository`
- `lib/core/di/di.dart`

UI, provider, page, router까지는 별도 요청이 있거나 기능 범위에 포함될 때만 확장한다.

## 폴더 구조 패턴

- `data/data_source`: Dio 기반 remote data source
- `data/dto`: 서버 응답/요청 DTO
- `data/mapper`: DTO -> Entity 변환
- `data/repository`: domain repository 구현체
- `domain/entity`: 앱 내부에서 쓰는 entity
- `domain/repository`: repository interface
- `core/di/di.dart`: GetIt 등록

## RemoteDataSource 패턴

- abstract interface + implementation 구조를 유지한다.
- implementation은 `Dio`를 주입받는다.
- path는 서버 contract 기준으로 작성한다.
- 응답은 DTO로 파싱한다.
- 단순 응답이면 `Dto.fromJson(response.data)` 패턴을 우선한다.
- generic/paging 응답이면 raw 타입 검사 후 안전하게 변환한다.

## DTO 패턴

- DTO는 `freezed`를 우선 사용한다.
- 보통 아래 구성을 따른다:
  - `part '<file>.freezed.dart';`
  - `part '<file>.g.dart';`
- `fromJson(Map<String, Object?> json)` 생성자를 둔다.
- 위치는 `lib/data/dto`

## Entity 패턴

- Entity도 `freezed`를 우선 사용한다.
- 위치는 `lib/domain/entity`
- 앱 내부에서 쓰기 좋은 타입으로 변환한다.
  - 예: 날짜 문자열 -> `DateTime`
  - 예: 서버 문자열 enum -> 앱 enum

## Mapper 패턴

- Mapper는 별도 클래스의 static 메서드로 둔다.
- 이름은 `<Domain>Mapper`
- 기본 역할은 DTO -> Entity 변환
- 필요한 경우 내부 private helper로 parsing을 분리한다.

## Repository 패턴

- domain repository는 abstract class
- data repository implementation은 remote data source를 주입받는다.
- 구현체는 mapper를 통해 DTO를 Entity로 변환한다.
- 위치:
  - interface: `lib/domain/repository`
  - implementation: `lib/data/repository`

## DI 패턴

- `lib/core/di/di.dart`에서 GetIt 사용
- 기본 등록 순서는 아래를 유지한다.
  1. Core
  2. RemoteDataSource
  3. Repository
  4. Infra/Service
- 새 API 기능이 생기면 RemoteDataSource와 Repository를 모두 등록한다.

## 빌드 생성 패턴

- DTO와 Entity가 `freezed`를 사용하면 generated 파일 갱신이 필요하다.
- 기본 실행 위치는 `apps/tandangi-app`
- 기본 명령:
  - `flutter pub run build_runner build --delete-conflicting-outputs`

## 검증 패턴

- 가능하면 build_runner 실행
- 필요하면 `flutter analyze`
- 검증이 불가능하면 이유를 명시

## 서버 이후 앱 생성 순서

1. 서버 API contract 확인
2. DTO 생성
3. Entity 생성
4. Mapper 생성
5. RemoteDataSource 생성
6. Repository interface/implementation 생성
7. DI 등록
8. build_runner 실행
9. 필요 시 analyze

## 실제 코드 재확인이 필요한 경우

- 이 문서에 없는 새 응답 구조
- feature/provider/router/UI까지 확장되는 경우
- paging/generic 처리가 특수한 경우
- 서버 contract가 확정되지 않은 경우
- 최근 컨벤션이 바뀌었는데 문서가 아직 안 따라온 경우

## 주요 참고 구현

- `user`: 기본 API 연동 흐름 참고
- `app_version`: 단순 단건 조회 참고
- `product`: paging + generic DTO 매핑 참고

## 관련 문서

- `AGENTS.md`
- `docs/APP_FEATURE_REQUEST_TEMPLATE.md`
