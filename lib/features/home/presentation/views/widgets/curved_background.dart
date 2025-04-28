import 'package:flutter/material.dart';

class CurvedBackground extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final bool curveOnLeft; // true = curve left, false = curve right
  final Widget? child;
  const CurvedBackground({
    super.key,
    required this.width,
    required this.height,
    this.color = Colors.green,
    this.curveOnLeft = true,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        children: [
          CustomPaint(
            size: Size(width, height),
            painter: _CurvedPainter(color: color, curveOnLeft: curveOnLeft),
          ),
          if (child != null)
            SizedBox(
              width: width,
              height: height,
              child: child,
            ),
        ],
      ),
    );
  }
}

class _CurvedPainter extends CustomPainter {
  final Color color;
  final bool curveOnLeft;

  _CurvedPainter({required this.color, required this.curveOnLeft});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final path = Path();

    if (curveOnLeft) {
      path.moveTo(size.width * 0.1, 0);
      path.quadraticBezierTo(0, size.height / 2, size.width * 0.1, size.height);
      path.lineTo(size.width, size.height);
      path.lineTo(size.width, 0);
    } else {
      path.moveTo(0, 0);
      path.lineTo(size.width * 0.9, 0);
      path.quadraticBezierTo(
          size.width, size.height / 2, size.width * 0.9, size.height);
      path.lineTo(0, size.height);
    }

    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
