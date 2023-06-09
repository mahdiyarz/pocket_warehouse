import 'package:flutter/material.dart';

import '../extensions/hex_color.dart';
import 'my_style.dart';

abstract class MyColors {
  static Color primary = HexColor.fromHex('#ffcda3');
  static Color darkPrimary = HexColor.fromHex('#ffbc85');
  static Color onPrimary = HexColor.fromHex('#425c5a');
  static Color primaryContainer = HexColor.fromHex('#425c5a');
  static Color onPrimaryContainer = HexColor.fromHex('#FFFFFF');
  static Color secondary = HexColor.fromHex('#5b7775');
  static Color onSecondary = HexColor.fromHex('#FFFFFF');
  static Color error = HexColor.fromHex('#BA1A1A');
  static Color onError = HexColor.fromHex('#FFFFFF');
  static Color grey = HexColor.fromHex('#737477');
  static Color grey1 = HexColor.fromHex('#707070');
  static Color grey2 = HexColor.fromHex('#797979');
  static Color lightGrey = HexColor.fromHex('#9E9E9E');
  static Color darkGrey = HexColor.fromHex('#525252');
  static Color white = HexColor.fromHex('#FFFFFF');
  static Color background = HexColor.fromHex('#F3FFFA');
  static Color onBackground = HexColor.fromHex('#425c5a');
  static Color surface = HexColor.fromHex('#F3FFFA');
  static Color onSurface = HexColor.fromHex('#00201A');
  static Color outline = HexColor.fromHex('#85736F');
  static Color shadow = HexColor.fromHex('#000000');
}

ThemeData getApplicationTheme() {
  return ThemeData(
    useMaterial3: true,
    fontFamily: FontConstants.fontFamily,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: MyColors.primary,
      onPrimary: MyColors.onPrimary,
      primaryContainer: MyColors.primaryContainer,
      onPrimaryContainer: MyColors.onPrimaryContainer,
      secondary: MyColors.secondary,
      onSecondary: MyColors.onSecondary,
      error: MyColors.error,
      onError: MyColors.onError,
      background: MyColors.background,
      onBackground: MyColors.onBackground,
      surface: MyColors.surface,
      onSurface: MyColors.onSurface,
      outline: MyColors.outline,
      shadow: MyColors.shadow,
    ),
  );
}
