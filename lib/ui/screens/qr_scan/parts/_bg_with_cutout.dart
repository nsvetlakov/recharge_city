part of '../qr_scan_screen.dart';

/// Кастомный виджет с вырезом в центре и затемнением фона
class BgWithCutoutPainter extends CustomPainter {
  /// Кастомный виджет с вырезом в центре и затемнением фона
  BgWithCutoutPainter({
    required this.cutoutSize,
    this.cutoutBorderRadius = 16,
    this.strokeWidth = 2,
    this.gapSize = 40.0,
    this.borderGradient,
    this.backgroundColor,
  });

  /// Размер выреза
  final Size cutoutSize;

  /// Ширина границ выреза
  ///
  /// Дефолт - 2
  final double strokeWidth;

  /// Градиент цветов границ
  ///
  /// Дефолт - прозрачный
  final Gradient? borderGradient;

  /// Радиус скргуления углов выреза
  ///
  /// Дефолт - 16
  final double cutoutBorderRadius;

  /// Цвет фона
  ///
  /// Дефолт - [AppColors.bwBrightPrimary] с прозрачностью 0.65
  final Color? backgroundColor;

  /// Размер пробела в обводке
  ///
  /// Дефолт - 40.0
  final double gapSize;

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);

    // RRect (фигура) выреза
    final cutoutShape = RRect.fromRectAndRadius(
      Rect.fromCenter(
        center: center,
        width: cutoutSize.width,
        height: cutoutSize.height,
      ),
      Radius.circular(cutoutBorderRadius),
    );

    // Path выреза
    final cutoutPath = Path()
      ..addRRect(cutoutShape)
      ..close();

    // Path фона
    final backgroundPath = Path()
      ..addRect(
        Rect.fromCenter(center: center, width: size.width, height: size.height),
      )
      ..close();

    // Комбинция двух векторов с разницей между ними
    final combinedPath = Path.combine(
      PathOperation.difference,
      backgroundPath,
      cutoutPath,
    )..close();

    // Стиль отрисовки выреза (его границ)
    final cutoutPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round
      ..shader =
          (borderGradient ??
                  LinearGradient(
                    colors: [Colors.transparent, Colors.transparent],
                  ))
              .createShader(cutoutPath.getBounds());

    // Стиль отрисовки фона
    final paintBackground = Paint()
      ..style = PaintingStyle.fill
      ..color = backgroundColor ?? Colors.black26;

    // Path обводки
    final borderPath = drawSegmentedRRect(cutoutShape.deflate(strokeWidth / 2));

    // ~*~*~ Рисуем ~*~*~
    canvas
      ..drawPath(combinedPath, paintBackground)
      ..drawPath(borderPath, cutoutPaint);
  }

  /// Вычисление RRect обводки
  ///
  /// В теории можно было бы отрисовать одну сторону и зеркалить её в
  /// зависимости от стороны и угла, но это было бы сложнее, поэтому так
  Path drawSegmentedRRect(RRect rrect) {
    final path = Path();
    final rect = rrect.outerRect;
    final radius = rrect.tlRadius;

    // Отрисовка стороны
    void drawSide(Offset start, Offset gapStart, Offset gapEnd, Offset end) {
      path
        ..moveTo(start.dx, start.dy)
        ..lineTo(gapStart.dx, gapStart.dy)
        ..moveTo(gapEnd.dx, gapEnd.dy)
        ..lineTo(end.dx, end.dy);
    }

    // Верх
    drawSide(
      Offset(rect.left + radius.x, rect.top),
      Offset(rect.center.dx - gapSize, rect.top),
      Offset(rect.center.dx + gapSize, rect.top),
      Offset(rect.right - radius.x, rect.top),
    );

    // Право
    drawSide(
      Offset(rect.right, rect.top + radius.y),
      Offset(rect.right, rect.center.dy - gapSize),
      Offset(rect.right, rect.center.dy + gapSize),
      Offset(rect.right, rect.bottom - radius.y),
    );

    // Низ
    drawSide(
      Offset(rect.right - radius.x, rect.bottom),
      Offset(rect.center.dx + gapSize, rect.bottom),
      Offset(rect.center.dx - gapSize, rect.bottom),
      Offset(rect.left + radius.x, rect.bottom),
    );

    // Лево
    drawSide(
      Offset(rect.left, rect.bottom - radius.y),
      Offset(rect.left, rect.center.dy + gapSize),
      Offset(rect.left, rect.center.dy - gapSize),
      Offset(rect.left, rect.top + radius.y),
    );

    // Скругления углов
    final cornerCenters = [
      Offset(rect.left + radius.x, rect.top + radius.y),
      Offset(rect.right - radius.x, rect.top + radius.y),
      Offset(rect.right - radius.x, rect.bottom - radius.y),
      Offset(rect.left + radius.x, rect.bottom - radius.y),
    ];
    final startAngles = [math.pi, -math.pi / 2, 0, math.pi / 2];

    for (var i = 0; i < 4; i++) {
      path.addArc(
        Rect.fromCircle(center: cornerCenters[i], radius: radius.x),
        startAngles[i].toDouble(),
        math.pi / 2,
      );
    }
    return path;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
