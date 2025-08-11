import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app_for_red/ui/router/router.dart';
import 'package:test_app_for_red/ui/shared/app_scaffold.dart';
import 'package:test_app_for_red/ui/shared/text.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Test App for Red',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black26),
      ),
      routeInformationProvider: appRouter.routeInformationProvider,
      routeInformationParser: appRouter.routeInformationParser,
      routerDelegate: appRouter.routerDelegate,
    );
  }
}

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1de300),
        title: AppText.medium20('Recharge City', color: Colors.white),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            appRouter.push(ScreenPaths.qrCode);
          },
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Color(0xff1de300)),
          ),
          child: AppText.regular20('QR-Scan', color: Colors.white),
        ),
      ),
    );
  }
}
