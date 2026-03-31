import 'dart:ui';

// 이 코드는 임시. 나중에 toARGB32 함수가 기본 Color에 들어갈 예정
extension ColorExtension on Color {
  int toARGB32() {
    return floatToInt8(a) << 24 | floatToInt8(r) << 16 | floatToInt8(g) << 8 | floatToInt8(b) << 0;
  }

  int floatToInt8(double x) {
    return (x * 255.0).round() & 0xff;
  }
}
