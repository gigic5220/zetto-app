extension StringExtensions on String? {
  bool get isExist => this != null && this!.isNotEmpty;

  bool get isValidUrl {
    if (!isExist) return false;

    try {
      final uri = Uri.parse(this!);
      return uri.hasScheme && uri.hasAuthority;
    } catch (e) {
      return false;
    }
  }

  bool checkBottomConsonan({
    /// 문법 예외처리
    /// 1. 로 (조사): 받침 없는 체언이나 ‘ㄹ’ 받침으로 끝나는 체언 뒤에 붙음.
    /// 2. 으로 (조사): ‘ㄹ’을 제외한 받침 있는 체언 뒤에 붙음.
    bool grammarExcept = false,
  }) {
    /// 초성 19개
    /// 중성 21개
    /// 종성 28개
    /// 초성 인덱스 = ((한글 유니코드값 - 0xAC00) / 28) / 21
    /// 중성 인덱스 = ((한글 유니코드값 - 0xAC00) / 28) % 21
    /// 종성 인덱스 = (한글 유니코드값 - 0xAC00) % 28

    if (grammarExcept) {
      final jon = (this!.runes.last - 0xAC00) % 28;

      return jon != 8 && jon != 0;
    }

    return (this!.runes.last - 0xAC00) % 28 != 0;
  }
}
