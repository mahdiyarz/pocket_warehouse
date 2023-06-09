import 'package:flutter/material.dart';

abstract class FontConstants {
  static const String fontFamily = 'Vazir';
}

abstract class FontWeightManager {
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight bold = FontWeight.w700;
}

TextStyle _getTextStyle(
  double fontSize,
  String fontFamily,
  FontWeight fontWeight,
  Color color,
) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: fontFamily,
    fontWeight: fontWeight,
    color: color,
  );
}

class AppTextStyle {
  AppTextStyle._();

  //* Light Style
  static TextStyle getLightStyle({
    double fontSize = 12,
    required Color color,
  }) {
    return _getTextStyle(
      fontSize,
      FontConstants.fontFamily,
      FontWeightManager.light,
      color,
    );
  }

  //* Regular Style
  static TextStyle getRegularStyle({
    double fontSize = 12,
    required Color color,
  }) {
    return _getTextStyle(
      fontSize,
      FontConstants.fontFamily,
      FontWeightManager.regular,
      color,
    );
  }

//* Medium Style
  static TextStyle getMediumStyle({
    double fontSize = 12,
    required Color color,
  }) {
    return _getTextStyle(
      fontSize,
      FontConstants.fontFamily,
      FontWeightManager.medium,
      color,
    );
  }

//* Bold Style
  static TextStyle getBoldStyle({
    double fontSize = 12,
    required Color color,
  }) {
    return _getTextStyle(
      fontSize,
      FontConstants.fontFamily,
      FontWeightManager.bold,
      color,
    );
  }
}
