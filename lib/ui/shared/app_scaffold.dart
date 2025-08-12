import 'package:flutter/material.dart';

/// Общий скаффолд
class AppScaffold extends StatelessWidget {
  /// Общий скаффолд
  const AppScaffold({
    super.key,
    required this.body,
    this.appBar,
    this.backgroundColor,
    this.useSafeAreaTop = true,
  });

  ///
  final Widget body;

  /// appBar
  final PreferredSizeWidget? appBar;

  /// пространство сверху
  final bool useSafeAreaTop;

  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeBottom: true,
      child: Scaffold(
        backgroundColor: backgroundColor ?? Colors.white,
        appBar: appBar,
        body: SafeArea(top: useSafeAreaTop, child: body),
      ),
    );
  }
}
