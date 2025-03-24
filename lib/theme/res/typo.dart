import 'package:flutter/material.dart';

abstract class Typo {
  const Typo({
    required this.name,
    required this.thin,
    required this.extraLight,
    required this.light,
    required this.regular,
    required this.medium,
    required this.semiBold,
    required this.bold,
    required this.extraBold,
    required this.black,
  });

  final String name;
  final FontWeight thin;
  final FontWeight extraLight;
  final FontWeight light;
  final FontWeight regular;
  final FontWeight medium;
  final FontWeight semiBold;
  final FontWeight bold;
  final FontWeight extraBold;
  final FontWeight black;

  TextStyle getStyle({
    required double fontSize,
    FontWeight? weight,
    Color? color,
    double? height,
    double? letterSpacing,
  }) {
    return TextStyle(
      fontFamily: name,
      fontSize: fontSize,
      fontWeight: weight ?? regular,
      color: color,
      height: height,
      letterSpacing: letterSpacing,
    );
  }
}

class Pretendard implements Typo {
  const Pretendard();

  @override
  final String name = 'Pretendard';

  @override
  final FontWeight thin = FontWeight.w100;

  @override
  final FontWeight extraLight = FontWeight.w200;

  @override
  final FontWeight light = FontWeight.w300;

  @override
  final FontWeight regular = FontWeight.w400;

  @override
  final FontWeight medium = FontWeight.w500;

  @override
  final FontWeight semiBold = FontWeight.w600;

  @override
  final FontWeight bold = FontWeight.w700;

  @override
  final FontWeight extraBold = FontWeight.w800;

  @override
  final FontWeight black = FontWeight.w900;

  @override
  TextStyle getStyle({
    required double fontSize,
    FontWeight? weight,
    Color? color,
    double? height,
    double? letterSpacing,
  }) {
    return TextStyle(
      fontFamily: name,
      fontSize: fontSize,
      fontWeight: weight ?? regular,
      color: color,
      height: height,
      letterSpacing: letterSpacing,
    );
  }

  // 자주 사용되는 텍스트 스타일
  TextStyle get displayLarge => getStyle(fontSize: 32, weight: bold);
  TextStyle get displayMedium => getStyle(fontSize: 28, weight: bold);
  TextStyle get displaySmall => getStyle(fontSize: 24, weight: bold);

  TextStyle get headlineLarge => getStyle(fontSize: 20, weight: semiBold);
  TextStyle get headlineMedium => getStyle(fontSize: 18, weight: semiBold);
  TextStyle get headlineSmall => getStyle(fontSize: 14, weight: semiBold);

  TextStyle get titleLarge => getStyle(fontSize: 16, weight: medium);
  TextStyle get titleMedium => getStyle(fontSize: 14, weight: medium);
  TextStyle get titleSmall => getStyle(fontSize: 12, weight: medium);

  TextStyle get bodyLarge => getStyle(fontSize: 16, weight: bold);
  TextStyle get bodyMedium => getStyle(fontSize: 14, weight: regular);
  TextStyle get bodySmall => getStyle(fontSize: 12, weight: regular);

  TextStyle get labelLarge => getStyle(fontSize: 14, weight: medium);
  TextStyle get labelMedium => getStyle(fontSize: 12, weight: medium);
  TextStyle get labelSmall => getStyle(fontSize: 10, weight: medium);
}
