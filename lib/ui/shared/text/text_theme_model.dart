import 'package:flutter/material.dart';

/// Набор текстовых стелей приложения.
///
abstract final class TextThemeModel {
  /// шрифт Inter
  static const String fontInter = 'Inter';

  /// шрифт San Francisco Pro Display
  static const String fontSFProDisplay = 'San Francisco Pro Display';

  /// medium20
  static const medium20 = TextStyle(
    fontFamily: fontInter,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    fontSize: 20,
    height: 1,
  );

  /// regular38
  static const regular38 = TextStyle(
    fontFamily: fontInter,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    fontSize: 38,
    height: 57.95 / 38,
  );

  /// regular26
  static const regular26 = TextStyle(
    fontFamily: fontInter,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    fontSize: 26,
    height: 1.25,
  );

  /// regular20
  static const regular20 = TextStyle(
    fontFamily: fontInter,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    fontSize: 20,
    height: 1.25,
  );

  /// regular16
  static const regular16 = TextStyle(
    fontFamily: fontInter,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    fontSize: 16,
    height: 1,
  );

  /// regular12
  static const regular12 = TextStyle(
    fontFamily: fontInter,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    fontSize: 12,
    height: 1,
  );

  /// regular10
  static const regular10 = TextStyle(
    fontFamily: fontInter,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    fontSize: 12,
    height: 1,
  );

  /// light18
  static const light18 = TextStyle(
    fontFamily: fontInter,
    fontWeight: FontWeight.w300,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    fontSize: 18,
    height: 1,
  );

  /// light16
  static const light16 = TextStyle(
    fontFamily: fontInter,
    fontWeight: FontWeight.w300,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    fontSize: 16,
    height: 1.25,
  );

  /// light14
  static const light14 = TextStyle(
    fontFamily: fontInter,
    fontWeight: FontWeight.w300,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    fontSize: 14,
    height: 18 / 14,
  );

  /// light13
  static const light13 = TextStyle(
    fontFamily: fontInter,
    fontWeight: FontWeight.w300,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    fontSize: 13,
    height: 1.25,
  );
}
