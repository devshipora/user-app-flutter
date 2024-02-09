import 'package:flutter/material.dart';
import 'package:shipora_1/gen/colors.gen.dart';

class MyTextStyles {
  static TextStyle get heading => const TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get caption => const TextStyle(
        fontSize: 16,
        color: ColorName.textCaption,
        fontWeight: FontWeight.w500,
      );
}
