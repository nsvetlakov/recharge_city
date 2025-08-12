import 'package:flutter/widgets.dart';

// определние ширины экрана
double screenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

// определние высоты экрана
double screenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}
