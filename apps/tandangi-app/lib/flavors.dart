enum Flavor { dev, prod }

class FlavorInfo {
  static late final Flavor flavor;

  static String get name => flavor.name;

  static String get appTitle {
    switch (flavor) {
      case Flavor.dev:
        return 'Tandangi dev';
      case Flavor.prod:
        return 'Tandangi';
    }
  }

  static String get baseUrl {
    switch (flavor) {
      case Flavor.dev:
        //return 'https://tandangi-api-741098864815.asia-northeast3.run.app';
        //return 'http://192.168.2.40:8080';
        return 'http://192.168.0.90:8080';
      case Flavor.prod:
        return 'https://tandangi-api-741098864815.asia-northeast3.run.app';
    }
  }

  static String get termsUrl {
    return 'https://docs.google.com/document/d/1LSL6UrraUmtMv4M9jqthQJ98AMBVSomKMvNqqJroU5E/edit?tab=t.0';
  }

  static String get privacyPolicyUrl {
    return 'https://docs.google.com/document/d/1zWVEIdDpq7tvBuDWNa6Vuk2qIL7dYdMKtXbQOjNgJWU/edit?tab=t.0';
  }

  // 카카오 디벨로퍼스(https://developers.kakao.com)에서 발급받은 네이티브 앱 키
  static const kakaoNativeAppKey = 'f8f95d4a210b7e9f493206eaeaccdd30';
}
