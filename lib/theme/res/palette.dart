import 'package:flutter/material.dart';

abstract class Palette {
  /// Chromatic color (유채색)
  static Color blue1 = const Color(0xFFF5F7FF);
  static Color blue2 = const Color(0xFFE6EBFF);
  static Color blue3 = const Color(0xFFAAB9FF);
  static Color subBlue = const Color(0xFF6F87FF);
  static Color cherryGreen = const Color(0xFFC4E464);
  static Color green = const Color(0xFFA8C551);

  /// Accent colors
  static Color red = const Color(0xFFF25555);
  static Color yellow = const Color(0xFFFFD833);

  /// Greyscale
  static Color white = const Color(0xFFFFFFFF);
  static Color bluegrey = const Color(0xFF202632);
  static Color lightGrey1 = const Color(0xFFF5F5F5);
  static Color lightGrey2 = const Color(0xFFDBDCDC);
  static Color grey1 = const Color(0xFFB5B7BA);
  static Color grey2 = const Color(0xFF909398);
  static Color darkGrey1 = const Color(0xFF5C5F66);
  static Color darkGrey2 = const Color(0xFF292C34);
  static Color black = const Color(0xFF000000);
}
