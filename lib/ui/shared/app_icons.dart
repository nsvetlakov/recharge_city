import 'package:flutter/material.dart';

/// Тут живут ссылки на все иконки и изображения, которые мы загружаем в assets
class AppIcons {
  static const String rootPath = 'assets/images';

  static const String applePay = '$rootPath/apple-pay.png';
  static const String card = '$rootPath/card.png';
  static const String hint = '$rootPath/hint.png';
  static const String infoCircle = '$rootPath/info-circle.png';
  static const String logo = '$rootPath/logo.png';
  static const String pinAlt = '$rootPath/pin_alt.png';
  static const String receiptItem = '$rootPath/receipt-item.png';
  static const String returnIcon = '$rootPath/return.png';
  static const String success = '$rootPath/success.png';

  static Widget icon(
    String path, {
    double? width,
    double? height,
    Color? color,
    BoxFit? fit,
  }) {
    return Image.asset(
      path,
      width: width ?? 24,
      height: height ?? 24,
      color: color,
      fit: fit,
    );
  }
}
