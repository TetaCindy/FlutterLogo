import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: FlutterLogoWidget(size: 200),
        ),
      ),
    );
  }
}

class FlutterLogoWidget extends StatelessWidget {
  final double size;

  const FlutterLogoWidget({super.key, this.size = 200});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(size, size),
      painter: _FlutterLogoPainter(),
    );
  }
}

class _FlutterLogoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final w = size.width;
    final h = size.height;

    // Light blue shape (the "F")
    final lightPaint = Paint()..color = const Color(0xFF54C5F8);
    final lightPath = Path()
      ..moveTo(w * 0.3, 0)
      ..lineTo(w * 0.75, 0)
      ..lineTo(w * 0.3, h * 0.45)
      ..lineTo(0, h * 0.45)
      ..close();
    canvas.drawPath(lightPath, lightPaint);

    // Dark blue diagonal shape
    final darkPaint = Paint()..color = const Color(0xFF1867C2);
    final darkPath = Path()
      ..moveTo(w * 0.3, h * 0.45)
      ..lineTo(w * 0.75, h * 0.9)
      ..lineTo(w * 0.5, h)
      ..lineTo(0, h * 0.55)
      ..close();
    canvas.drawPath(darkPath, darkPaint);

    // Middle triangle (slightly different shade for depth)
    final midPaint = Paint()..color = const Color(0xFF13B9FD);
    final midPath = Path()
      ..moveTo(w * 0.75, 0)
      ..lineTo(w, h * 0.25)
      ..lineTo(w * 0.55, h * 0.7)
      ..lineTo(w * 0.3, h * 0.45)
      ..close();
    canvas.drawPath(midPath, midPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}