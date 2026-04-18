# App Feature Request Template

이 문서는 `tandangi-app` API 연동 기능을 Codex에게 요청할 때 사용하는 권장 양식이다.

모든 항목을 다 채울 필요는 없다.
서버 contract와 패턴 문서가 명확하면, 짧은 요청만으로도 진행할 수 있다.

## 최소 요청 예시

```md
서버에 추가한 상품 조회 API를 tandangi-app에도 연결해줘.

data, domain, di까지 해주고
freezed/build_runner도 돌려줘.
```

## 권장 요청 양식

```md
[기능명]
예: 상품 목록 조회 앱 연동

[연결할 서버 API]
- method:
- path:
- request:
- response:

[앱 범위]
- data source
- dto
- mapper
- entity
- repository
- di
- 필요하면 feature/provider/router

[비즈니스 규칙]
- 예: createdAt/updatedAt은 DateTime으로 변환
- 예: 서버 enum 문자열은 앱 enum으로 매핑

[응답 처리]
- 예: paging 응답
- 예: 단건 응답

[코드 생성]
- freezed 사용 여부
- build_runner 실행 여부

[검증]
- 예: flutter analyze까지
```

## Codex가 기본으로 해주는 일

- `docs/APP_CODE_PATTERNS.md` 기준으로 기본 구조 결정
- 서버 contract 기준 DTO/Entity/Mapper/Repository/RemoteDataSource 생성 또는 수정
- `lib/core/di/di.dart` 의존성 등록
- 가능한 경우 build_runner 실행
- 가능한 경우 analyze 또는 관련 검증
- 가정한 사항과 남은 open question 정리

## 패턴 참조 방식

- 기본은 `docs/APP_CODE_PATTERNS.md`
- 문서로 부족할 때만 실제 코드 추가 확인
- 패턴 문서가 바뀌면 새 작업은 그 즉시 새 문서를 기준으로 생성

## 기본 가정

별도 지시가 없으면 아래를 기본값으로 본다.

- 서버 contract가 이미 존재한다고 가정
- 앱 작업은 `data/domain/di` 범위를 우선
- DTO와 Entity는 `freezed`
- generated 파일이 필요하면 build_runner 실행

## 좋은 요청의 예

```md
서버에 추가한 GET /api/nutrition/{userId} 응답을 tandangi-app에도 붙여줘.

우선은 data, domain, di까지만 해줘.
dto와 entity는 freezed 써주고,
날짜 문자열은 DateTime으로 바꿔줘.
build_runner도 실행해줘.
```
