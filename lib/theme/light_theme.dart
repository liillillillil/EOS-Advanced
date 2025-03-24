import 'package:flutter/material.dart';

import 'foundation/app_theme.dart';
import 'res/palette.dart';
import 'res/typo.dart';

class LightTheme implements AppTheme {
  @override
  Brightness brightness = Brightness.light;

  @override
  AppColor color = AppColor(
    surface: Palette.white,
    background: Palette.blue1.withAlpha(140), // 알파 값을 조절해 투명도 변경
    text: Palette.black,
    subtext: Palette.darkGrey1,
    toastContainer: Palette.black.withAlpha(217), // 알파 값을 조절해 투명도 변경
    onToastContainer: Palette.lightGrey1,
    hint: Palette.grey1,
    hintContainer: Palette.lightGrey2,
    onHintContainer: Palette.grey2,
    inactive: Palette.blue2,
    inactiveContainer: Palette.lightGrey1,
    onInactiveContainer: Palette.white,
    primary: Palette.green, // 메인 컬러를 blue로 설정
    onPrimary: Palette.white,
    secondary: Palette.subBlue,
    onSecondary: Palette.white,
    tertiary: Palette.red,
    onTertiary: Palette.white,
  );

  @override
  late AppTypo typo = AppTypo(
    typo: const Pretendard(),
    fontColor: color.text,
  );

  @override
  AppDeco deco = AppDeco(
    shadow: [
      BoxShadow(
        color: Palette.black.withAlpha(26), // 알파 값을 조절해 투명도 변경
        blurRadius: 35,
      ),
    ],
  );
}
