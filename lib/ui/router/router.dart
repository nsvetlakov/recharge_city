import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:test_app_for_red/main.dart';
import 'package:test_app_for_red/ui/screens/payment/payment_screen.dart';
import 'package:test_app_for_red/ui/screens/subscribe/subcribe_screen.dart';
import 'package:test_app_for_red/ui/screens/qr_scan/qr_scan_screen.dart';

/// Список доступных названий для роутов
final class ScreenPaths {
  const ScreenPaths._();

  /// Домой
  static const String main = '/';

  /// Экран Токенов
  static const String qrCode = '/qr-code';
  static const String paymentScreen = '/payment-screen';
  static const String subscribeScreen = '/subscribe-screen';
}

/// Доступные роуты
final routes = [
  AppRoute(ScreenPaths.main, (_) => const StartScreen()),
  AppRoute(ScreenPaths.qrCode, (_) => const QrCodeScanScreen()),
  AppRoute(ScreenPaths.paymentScreen, (_) => const PaymentScreen()),
  AppRoute(ScreenPaths.subscribeScreen, (_) => const SubscribeScreen()),
];

/// Главный роутер, который можно вызывать без доступа к context
final appRouter = GoRouter(initialLocation: ScreenPaths.main, routes: routes);

final class AppRoute extends GoRoute {
  AppRoute(
    String path,
    Widget Function(GoRouterState) builder, {
    List<GoRoute> super.routes = const [],
    super.name,
    Object? arguments,
  }) : super(
         path: path,
         pageBuilder: (_, state) {
           final pageContent = builder(state);
           return CupertinoPage(
             child: pageContent,
             arguments: arguments,
             name: state.fullPath,
           );
         },
       );
}
