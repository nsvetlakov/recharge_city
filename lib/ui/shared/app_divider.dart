import 'package:flutter/material.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({super.key});

  @override
  Widget build(BuildContext context) {
    // Можно было создать класс AppColors и брать цвет оттуда
    return Divider(height: 1, color: Color(0xFFA0A0A0));
  }
}
