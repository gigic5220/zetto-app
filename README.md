# flutter_initialize_project

Flutter 멀티 패키지/멀티 앱 워크스페이스 템플릿입니다.

## 현재 아키텍처 기준

- 도메인 종속 코드(`domain/data/usecase/DI`)는 `apps/example_app`에 둡니다.
- `packages/core_app`은 공통 모듈(UI/확장/스토리지/테마 등)만 유지합니다.
- `core_app -> example_app` 의존은 금지합니다.

## 폴더 구조

```text
.
├─ apps/
│  └─ example_app/
│     └─ lib/
│        ├─ core/di/                # 앱 DI 엔트리/생성 결과
│        ├─ domain/                 # entity/param/repository/response/enum
│        ├─ data/                   # source/model/repository/mapper
│        ├─ usecase/                # 앱 유스케이스
│        └─ presentation/           # UI
├─ packages/
│  ├─ core_app/
│  │  └─ lib/                       # 공통 모듈(components/extensions/responsive/theme/storage)
│  └─ design_system/
└─ .cursor/skills/swagger-to-code-generate/
   └─ generate-guide.md             # Swagger 코드 생성 규칙
```

## 의존성 방향

- `presentation -> usecase/domain`
- `usecase -> domain repository`
- `data -> domain`
- `domain -> data` 참조 금지

## 코드 생성/검증

- 의존성 설치(루트):
  - `flutter pub get`
- 코드 생성(`example_app`):
  - `flutter pub run build_runner build --delete-conflicting-outputs`
- 정적 분석(루트):
  - `flutter analyze`

## Swagger 생성 규칙

Swagger/OpenAPI 기반 생성 시 세부 규칙은 아래 문서를 따릅니다.

- `.cursor/skills/swagger-to-code-generate/generate-guide.md`
