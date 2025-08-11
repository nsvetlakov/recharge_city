import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:test_app_for_red/ui/shared/text/text_theme_model.dart';

class AppText extends StatelessWidget {
  const AppText({
    super.key,
    this.text,
    this.style,
    this.color,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.decoration,
    this.decorationColor,
  });

  /// [AppTextType.medium20]
  AppText.medium20(
    this.text, {
    this.color,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.decoration,
    this.decorationColor,
    super.key,
  }) : style = TextThemeModel.medium20.copyWith(
         color: color,
         overflow: overflow,
       );

  /// [AppTextType.regular38]
  AppText.regular38(
    this.text, {
    this.color,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.decoration,
    this.decorationColor,
    super.key,
  }) : style = TextThemeModel.regular38.copyWith(
         color: color,
         overflow: overflow,
       );

  /// [AppTextType.regular26]
  AppText.regular26(
    this.text, {
    this.color,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.decoration,
    this.decorationColor,
    super.key,
  }) : style = TextThemeModel.regular26.copyWith(
         color: color,
         overflow: overflow,
         decoration: decoration,
         decorationColor: decorationColor,
       );

  /// [AppTextType.regular20]
  AppText.regular20(
    this.text, {
    this.color,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.decoration,
    this.decorationColor,
    super.key,
  }) : style = TextThemeModel.regular20.copyWith(
         color: color,
         overflow: overflow,
       );

  /// [AppTextType.regular16]
  AppText.regular16(
    this.text, {
    this.color,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.decoration,
    this.decorationColor,
    super.key,
  }) : style = TextThemeModel.regular16.copyWith(
         color: color,
         overflow: overflow,
       );

  /// [AppTextType.regular12]
  AppText.regular12(
    this.text, {
    this.color,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.decoration,
    this.decorationColor,
    super.key,
  }) : style = TextThemeModel.regular12.copyWith(
         color: color,
         overflow: overflow,
       );

  /// [AppTextType.regular10]
  AppText.regular10(
    this.text, {
    this.color,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.decoration,
    this.decorationColor,
    super.key,
  }) : style = TextThemeModel.regular10.copyWith(
         color: color,
         overflow: overflow,
       );

  /// [AppTextType.light18]
  AppText.light18(
    this.text, {
    this.color,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.decoration,
    this.decorationColor,
    super.key,
  }) : style = TextThemeModel.light18.copyWith(
         color: color,
         overflow: overflow,
       );

  /// [AppTextType.light16]
  AppText.light16(
    this.text, {
    this.color,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.decoration,
    this.decorationColor,
    super.key,
  }) : style = TextThemeModel.light16.copyWith(
         color: color,
         overflow: overflow,
       );

  /// [AppTextType.light14]
  AppText.light14(
    this.text, {
    this.color,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.decoration,
    this.decorationColor,
    super.key,
  }) : style = TextThemeModel.light14.copyWith(
         color: color,
         overflow: overflow,
       );

  /// [AppTextType.light13]
  AppText.light13(
    this.text, {
    this.color,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.decoration,
    this.decorationColor,
    super.key,
  }) : style = TextThemeModel.light13.copyWith(
         color: color,
         overflow: overflow,
       );

  final String? text;
  final TextStyle? style;
  final Color? color;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final double? textScaleFactor;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final ui.TextHeightBehavior? textHeightBehavior;
  final TextDecoration? decoration;
  final Color? decorationColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? '',
      style: style,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
    );
  }
}
