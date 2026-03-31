# Data/Domain 코드 생성 가이드 (앱 분리 구조 반영)

## 1) 목적과 범위

- 대상 앱: `apps/example_app`
- 대상 레이어: `lib/domain`, `lib/data`, `lib/usecase`
- 목표: Swagger/OpenAPI 기반 생성 코드를 현재 아키텍처와 일치시키고 DI/코드생성까지 한 번에 마무리
- 비대상: `core_app` 내부에 feature 도메인/데이터 생성

## 2) 현재 아키텍처 원칙

- 도메인 종속 코드(`domain/data/usecase`)는 **반드시 `example_app`에 둔다.**
- `core_app`은 공통 UI/확장/스토리지/테마 같은 재사용 모듈만 유지한다.
- feature API/DTO/repository_impl/mapper는 앱 로컬 구현으로 관리한다.

## 3) 디렉터리 구조 (필수)

### Domain

- `apps/example_app/lib/domain/entity/{feature}/...`
- `apps/example_app/lib/domain/enum/{feature}/...` (api enum 대응 도메인 enum)
- `apps/example_app/lib/domain/param/{feature}/...` (body payload 있을 때만)
- `apps/example_app/lib/domain/repository/{feature}_repository.dart`
- `apps/example_app/lib/domain/response/*_wrapper.dart`

### Data

- `apps/example_app/lib/data/source/remote/{feature}_api.dart`
- `apps/example_app/lib/data/model/enum/...` (api enum 대응 data enum)
- `apps/example_app/lib/data/model/response/remote/{feature}/...`
- `apps/example_app/lib/data/model/request/{feature}/...` (Body가 있을 때만)
- `apps/example_app/lib/data/repository/remote/{feature}_repository_impl.dart`
- `apps/example_app/lib/data/repository/remote/mapper/{feature}_mapper.dart`
- `apps/example_app/lib/data/repository/response_wrapper.dart`
- `apps/example_app/lib/data/base_response.dart`
- `apps/example_app/lib/data/slice_response.dart`

### UseCase

- `apps/example_app/lib/usecase/{feature}/...`
- 예: `apps/example_app/lib/usecase/notice/get_notice_list.dart`

## 4) 의존성 방향

- `presentation -> usecase/domain`
- `usecase -> domain repository`
- `data -> domain`
- `domain -> data` 참조 금지
- `core_app -> example_app` 참조 금지

## 5) DI 원칙 (중요)

- DI 엔트리: `apps/example_app/lib/core/di/injector.dart`
- 생성 결과: `apps/example_app/lib/core/di/injector.config.dart`
- `example_app` DI는 단독으로 관리한다.
  - `includeMicroPackages`, `externalPackageModulesBefore` 사용하지 않음
  - `core_app/di/injector.module.dart` 같은 외부 마이크로패키지 의존 금지
- DI 대상:
  - `@lazySingleton` on Retrofit API
  - `@LazySingleton(as: XxxRepository)` on repository impl
  - `@singleton` on wrapper/helper 필요 객체

## 6) 네이밍 규칙

- API: `{feature}_api.dart`
- Repository 인터페이스: `{feature}_repository.dart`
- Repository 구현: `{feature}_repository_impl.dart`
- Mapper: `{feature}_mapper.dart`
- UseCase: `{action}_{target}.dart` 또는 `{action}_{target}_usecase.dart` (현재 컨벤션 우선)
- Param: body payload 있을 때만 `*_param.dart`
- Enum: data는 `data/model/enum`, domain은 `domain/enum/{feature}`에 생성
- Entity/DTO 파일명: 소문자 스네이크 케이스

## 7) 생성 순서 (표준 절차)

1. `domain/entity` 생성 (`freezed`)
2. api enum이 있으면 `data/model/enum` + `domain/enum/{feature}` 동시 생성
3. `domain/param` 생성 (Body가 있을 때만)
4. `domain/repository` 인터페이스 생성
5. `data/model` DTO 생성 (`freezed`/`json_serializable`)
6. `data/source/remote/{feature}_api.dart` 생성 (`Retrofit`)
7. `data/repository/remote/mapper` 생성
8. `data/repository/remote/{feature}_repository_impl.dart` 생성
9. `usecase/{feature}` 생성
10. DI 생성 대상 import/annotation 확인
11. 코드 생성 + 분석 실행

## 8) 파일별 필수 패턴

### A. Domain Repository

- 반환 타입: `Future<ResultWrapper<T>>` 또는 `Future<SliceWrapper<T>>`
- 외부 노출 타입은 Domain Entity 기준 유지
- 단순 query/path 전달은 optional named params 우선

### B. Data API

- `@RestApi()` + `@lazySingleton`
- `part 'generated/{feature}_api.g.dart';`
- 반환 타입: `Future<BaseResponse<Dto>>` 또는 `Future<SliceResponse<Dto>>`
- Body가 있으면 `@Body()` 타입은 `data/model/request` DTO 클래스로 정의하고 `Map<String, dynamic>` 사용 금지
- Body가 없고 query/path/header만 있으면 request DTO를 만들지 않고 해당 필드 타입(기본 타입/enum)으로 직접 선언

### C. Repository Impl

- API 호출은 반드시 `ResponseWrapper`를 통해 감싼다.
- 예외 처리 중복 구현 금지 (`ResponseWrapper`에 위임)
- mapper는 클래스 단위로 분리하고 inline 변환 최소화

### D. UseCase

- repository 주입 후 `call()` 또는 명확한 action 메서드로 위임
- 비즈니스 로직 없으면 thin wrapper 유지

## 9) Do / Don't

### Do

- feature 단위로 domain/data/usecase를 함께 생성
- 앱 코드 import는 `package:example_app/...` 기준 사용
- DI 등록 누락 여부를 생성 직후 확인
- Swagger 스펙 변경 시 DTO/mapper/repository를 함께 동기화
- api enum이 있으면 data/domain enum을 각각 생성하고 매핑 책임을 분리
- Body 요청은 request DTO 클래스로만 전달하고 Retrofit API에 Map body를 쓰지 않음

### Don't

- `core_app`에 feature domain/data 파일 생성 금지
- `package:core_app/src/...` 직접 import 금지
- presentation에서 data 레이어 직접 의존 금지
- domain에서 DTO 타입 직접 노출 금지
- `@Body() Map<String, dynamic>` 사용 금지
- query/path/header 전용 API에 불필요한 request DTO 생성 금지

## 10) 의존성 체크 포인트

`apps/example_app/pubspec.yaml`에 아래가 있어야 한다.

- runtime: `dio`, `retrofit`, `injectable`, `get_it`, `equatable`, `json_annotation`, `freezed_annotation`
- dev: `build_runner`, `injectable_generator`, `retrofit_generator`, `json_serializable`, `freezed`

`packages/core_app/pubspec.yaml`에는 feature domain/data 생성용 의존성을 추가하지 않는다.

## 11) 생성 후 실행 명령

- 의존성 동기화(워크스페이스 루트):
  - `flutter pub get`
- 코드 생성(`example_app`):
  - `flutter pub run build_runner build --delete-conflicting-outputs`
- 정적 분석(워크스페이스 루트):
  - `flutter analyze`
- 선택:
  - `flutter test`

## 12) AI Agent 출력 규칙

생성 요청 시 아래 순서로 응답한다.

1. 생성/수정 파일 목록
2. 각 파일 역할 1줄 설명
3. 코드 반영
4. DI/코드생성/분석 실행 결과
5. 남은 수동 작업(있을 때만)
