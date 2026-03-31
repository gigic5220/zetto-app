abstract class AuthRepository {
  Future<String> getFirebaseCustomTokenByKakao(String kakaoAccessToken);
}
