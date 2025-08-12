import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:test_app_for_red/core/utils.dart';
import 'package:test_app_for_red/data/repo/local/local_repository.dart';
import 'package:test_app_for_red/logic/repo/generate_account/account_provider.cg.dart';
import 'package:test_app_for_red/ui/router/router.dart';
import 'package:test_app_for_red/ui/shared/app_scaffold.dart';
import 'package:test_app_for_red/ui/shared/text.dart';

part 'parts/_bg_with_cutout.dart';

/// Экран сканирования QR кода
class QrCodeScanScreen extends ConsumerStatefulWidget {
  /// Экран сканирования QR кода
  const QrCodeScanScreen({super.key});

  @override
  ConsumerState<QrCodeScanScreen> createState() => _QrCodeScanScreenState();
}

class _QrCodeScanScreenState extends ConsumerState<QrCodeScanScreen> {
  // контроллер сканера
  late MobileScannerController scanController;
  // локальное хранилище
  final local = SharedPreferenceRepositoryImpl();

  @override
  void initState() {
    super.initState();
    scanController = MobileScannerController();
  }

  @override
  void dispose() {
    super.dispose();
    scanController.dispose();
  }

  // сканирование qr-code
  void _scanner(BarcodeCapture? result) {
    final barcodes = result?.barcodes.toSet() ?? {};
    if (barcodes.isNotEmpty) {
      final barcode = barcodes.toList()[0];
      final scannedCode = barcode.rawValue;

      if (scannedCode != null) {
        local.writeIdPowerBank(scannedCode);
        scanController.stop();
        appRouter.push(ScreenPaths.subscribeScreen);
        ref.read(accountServiceProvider.notifier).fetchAccount();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    double sWidth = screenWidth(context);
    double sHeight = screenHeight(context);

    return SafeArea(
      top: false,

      child: MobileScanner(
        controller: scanController,
        onDetect: _scanner,
        // Область сканирования
        scanWindow: Rect.fromCenter(
          center: Offset(screenWidth(context) / 2, screenHeight(context) / 2),
          width: 250,
          height: 250,
        ),

        // Оверлей поверх камеры
        overlayBuilder: (_, _) => AppScaffold(
          useSafeAreaTop: false,
          backgroundColor: Colors.transparent,
          // Кастомный виджет с вырезом
          body: CustomPaint(
            painter: BgWithCutoutPainter(
              cutoutSize: const Size(250, 250),
              cutoutBorderRadius: 54,
              strokeWidth: 9,
              borderGradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.lightGreenAccent, Colors.lightGreenAccent],
              ),
            ),
            child: SizedBox(
              width: sWidth,
              height: sHeight,
              child: Stack(
                children: [
                  Positioned(
                    top: 70,
                    right: 12,
                    child: IconButton(
                      onPressed: () {
                        scanController.stop();
                        appRouter.pop();
                      },
                      icon: Icon(Icons.close, color: Colors.white),
                    ),
                  ),
                  Positioned(
                    top: sHeight / 2 - 200,
                    left: 50,
                    right: 50,
                    child: AppText.medium20(
                      'Scan QR-code',
                      color: Colors.white,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
