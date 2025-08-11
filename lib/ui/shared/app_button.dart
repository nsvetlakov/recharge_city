import 'package:flutter/material.dart';
import 'package:test_app_for_red/core/utils.dart';
import 'package:test_app_for_red/ui/shared/text.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, this.width, this.onTap, required this.text});

  final double? width;
  final void Function()? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    double sWidth = screenWidth(context);
    return Material(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.all(Radius.circular(15)),
        child: Ink(
          width: width ?? sWidth,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[Color(0xff99F88D), Color(0xff86E71F)],
            ),
          ),
          child: Center(child: AppText.light18(text)),
        ),
      ),
    );
  }
}
