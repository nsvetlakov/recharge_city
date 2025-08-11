import 'package:flutter/material.dart';
import 'package:test_app_for_red/core/ext.dart';
import 'package:test_app_for_red/ui/shared/app_button.dart';
import 'package:test_app_for_red/ui/shared/text.dart';

void appAlert(BuildContext context, {required String text}) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        title: Center(
          child: AppText.medium20(text, textAlign: TextAlign.center),
        ),
      );
    },
  );
}

void appAlertBtn(
  BuildContext context, {
  required String text,
  required String textBtn,
  required void Function() onTap,
}) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        title: Column(
          children: [
            Center(child: AppText.medium20(text, textAlign: TextAlign.center)),
            16.sbHeight,
            AppButton(text: textBtn, onTap: onTap),
          ],
        ),
      );
    },
  );
}
