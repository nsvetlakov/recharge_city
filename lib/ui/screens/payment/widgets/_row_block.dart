part of '../payment_screen.dart';

class _RowBlock extends StatelessWidget {
  const _RowBlock({required this.text, this.pathIcon, this.subtext});

  final String? pathIcon;
  final String text;
  final String? subtext;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (pathIcon != null) ...[
          AppIcons.icon(pathIcon!, width: 24, height: 24),
          10.sbWidth,
        ],
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText.light16(text),
              if (subtext != null) ...[2.sbHeight, AppText.light13(subtext)],
            ],
          ),
        ),
      ],
    );
  }
}
