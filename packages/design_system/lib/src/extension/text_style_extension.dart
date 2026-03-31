import 'package:flutter/material.dart';

extension TextStyleExtension on TextStyle {
  TextStyle removeHeight() => copyWith(height: 1);
}
