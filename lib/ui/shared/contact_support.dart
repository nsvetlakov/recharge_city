import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:test_app_for_red/ui/shared/app_alert.dart';
import 'package:test_app_for_red/ui/shared/text/text_theme_model.dart';

class AppContactSupport extends StatelessWidget {
  const AppContactSupport({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        selectionColor: Colors.black,
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Nothing happened? ',
              style: TextThemeModel.regular10.copyWith(
                color: Color(0xff606060),
              ),
            ),
            TextSpan(
              text: 'Contact support',
              style: TextThemeModel.regular10.copyWith(
                color: Color(0xff606060),
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  appAlert(context, text: 'We are invite you!');
                },
            ),
          ],
        ),
      ),
    );
  }
}
