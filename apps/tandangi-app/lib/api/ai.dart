import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AiApi {
  AiApi(this.baseUrl);

  final String baseUrl;
  final Dio _dio = Dio();

  Future<Map<String, dynamic>> analyzeImage({
    required String imagePath,
    String? prompt, // 서버 기본 프롬프트 쓰면 null
    String? appId, // 선택: "tandangi-dev" 같은 식별자
  }) async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      throw Exception('Not logged in');
    }

    final idToken = await user.getIdToken(); // ✅ Firebase ID token

    // ✅ JWT payload에서 aud(project_id) 뽑기 (서명검증 X, 디버깅/로깅용)
    final projectId = _peekFirebaseProjectId(idToken);

    final formData = FormData.fromMap({'image': await MultipartFile.fromFile(imagePath, filename: 'image.jpg'), if (prompt != null) 'prompt': prompt});

    print('baseUrl: $baseUrl');
    print('firebaseProjectId(aud): $projectId');

    try {
      final res = await _dio.post(
        '$baseUrl/analyze',
        data: formData,
        options: Options(
          headers: {
            'Authorization': 'Bearer $idToken',
            if (appId != null) 'X-App-Id': appId, // 서버에서 로깅용(보안 판단에는 쓰지 말기)
            if (projectId != null) 'X-Firebase-Project': projectId, // 로깅용
          },
          contentType: 'multipart/form-data',
          responseType: ResponseType.json,
          sendTimeout: const Duration(seconds: 15),
          receiveTimeout: const Duration(seconds: 120),
          // 403/401이어도 response body를 보고 싶으면 validateStatus 풀기
          validateStatus: (status) => status != null && status >= 200 && status < 500,
        ),
      );

      // ✅ 2xx 아니면 서버가 준 에러 detail 출력
      if (res.statusCode == null || res.statusCode! >= 300) {
        throw Exception('HTTP ${res.statusCode}: ${res.data}');
      }

      return Map<String, dynamic>.from(res.data as Map);
    } on DioException catch (e) {
      // 네트워크/서버 응답 바디 확인
      final status = e.response?.statusCode;
      final data = e.response?.data;
      throw Exception('DioException status=$status data=$data message=${e.message}');
    }
  }

  /// JWT payload만 decode해서 aud(project_id) 뽑기 (디버깅/로그 용도)
  String? _peekFirebaseProjectId(String? jwt) {
    if (jwt == null) return null;
    final parts = jwt.split('.');
    if (parts.length != 3) return null;
    try {
      final payload = _decodeBase64Url(parts[1]);
      final map = jsonDecode(payload) as Map<String, dynamic>;
      final aud = map['aud'];
      if (aud is String && aud.isNotEmpty) return aud;
      final iss = map['iss'];
      if (iss is String && iss.startsWith('https://securetoken.google.com/')) {
        return iss.replaceFirst('https://securetoken.google.com/', '');
      }
      return null;
    } catch (_) {
      return null;
    }
  }

  String _decodeBase64Url(String str) {
    final normalized = base64Url.normalize(str);
    final bytes = base64Url.decode(normalized);
    return utf8.decode(bytes);
  }
}
