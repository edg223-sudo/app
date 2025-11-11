import 'package:flutter/material.dart';
import 'dart:math';

class Background extends StatelessWidget {
  final Widget? child;
  const Background({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
     
        Positioned.fill(
          child: CustomPaint(
            painter: _CleanDiagonalPainter(),
          ),
        ),

       
        if (child != null) child!,
      ],
    );
  }
}

class _CleanDiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

   
    final double diagonalWidth = size.width * 0.15 * 1.7;


    final p1 = Offset(0, 0);
    final p2 = Offset(size.width, size.height);

    
    final normal = Offset(
      (p2.dy - p1.dy),
      -(p2.dx - p1.dx),
    )._normalize();

   
    final Offset offset = normal * (diagonalWidth / 2);

 
    final upperLine = [p1 + offset, p2 + offset];
    final lowerLine = [p1 - offset, p2 - offset];

  
    paint.color = Colors.red;
    final redPath = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height)
      ..lineTo(lowerLine[1].dx, lowerLine[1].dy)
      ..lineTo(lowerLine[0].dx, lowerLine[0].dy)
      ..close();
    canvas.drawPath(redPath, paint);

    paint.color = Colors.white;
    final whitePath = Path()
      ..moveTo(0, 0)
      ..lineTo(upperLine[0].dx, upperLine[0].dy)
      ..lineTo(upperLine[1].dx, upperLine[1].dy)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();
    canvas.drawPath(whitePath, paint);

    paint.color = Colors.black;
    final blackPath = Path()
      ..moveTo(upperLine[0].dx, upperLine[0].dy)
      ..lineTo(upperLine[1].dx, upperLine[1].dy)
      ..lineTo(lowerLine[1].dx, lowerLine[1].dy)
      ..lineTo(lowerLine[0].dx, lowerLine[0].dy)
      ..close();
    canvas.drawPath(blackPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

extension on Offset {
  Offset _normalize() {
    final len = sqrt(dx * dx + dy * dy);
    return len == 0 ? this : this / len;
  }
}
