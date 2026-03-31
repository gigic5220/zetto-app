import 'dart:ui';

extension StringExtensions on String? {
  bool isNullOrEmpty() => this == null || this?.isEmpty == true;

  bool isNotEmpty() => this != null && this?.isEmpty == false;

  int? parseIntOrNull() => this == null ? null : int.tryParse(this!);

  double? parseDoubleOrNull() => this == null ? 0 : double.tryParse(this!);

  bool? parseBoolOrNull() => switch (this?.toLowerCase()) {
    'true' => true,
    'false' => false,
    _ => null,
  };

  bool isValidPhoneNumberFormat() {
    return false;
  }

  DateTime? parseDateTimeOrNull() => this == null ? null : DateTime.tryParse(this!);

  String toPhoneNumber() {
    if (this == null || this!.isEmpty) return '-';

    final digits = this!.replaceAll(RegExp(r'[^0-9]'), '');
    if (digits.length != 11) return this!;

    return '${digits.substring(0, 3)}-${digits.substring(3, 7)}-${digits.substring(7)}';
  }

  Color? hexCodeToColor() {
    if (this == null || this!.length != 6) return null;
    return Color(int.parse('FF${this!.toUpperCase()}', radix: 16));
  }
}

extension StringExtension on String {
  bool isValidEmailFormat() {
    return RegExp(r"^[a-zA-Z\d.a-zA-Z\d.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z\d]+\.[a-zA-Z]+").hasMatch(this);
  }

  bool isValidPhoneNumberFormat() {
    return RegExp(r'^010-?(\d{4})-?(\d{4})$').hasMatch(this);
  }

  int parseInt() => int.parse(this);

  bool? parseBoolOrNull() => switch (toLowerCase()) {
    'true' => true,
    'false' => false,
    _ => null,
  };

  bool checkBottomConsonant({
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
      final jon = (runes.last - 0xAC00) % 28;

      return jon != 8 && jon != 0;
    }

    return (runes.last - 0xAC00) % 28 != 0;
  }

  String truncatePTags({int? count}) {
    return this;
    // final document = parse(this);
    // final pTagList = document.getElementsByTagName('p');
    // return pTagList.sublist(0, min(pTagList.length, count ?? 3)).map((e) => e.outerHtml).join();
  }

  DateTime parseDateTime() => DateTime.parse(this);

  String toPhoneNumber() {
    final digits = replaceAll(RegExp(r'[^0-9]'), '');
    if (digits.length != 11) return this;

    return '${digits.substring(0, 3)}-${digits.substring(3, 7)}-${digits.substring(7)}';
  }

  String toInternationalPhoneNumber() {
    final digits = replaceAll(RegExp(r'[^0-9]'), '');
    if (digits.length != 11) return this;

    return '+82$digits';
  }
}
