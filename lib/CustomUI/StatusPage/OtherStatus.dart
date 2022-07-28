import 'dart:math';

import 'package:flutter/material.dart';

class OtherStatus extends StatelessWidget {
  String name = "";
  String time = "";
  bool seen = false;
  int totalNum = 1;
  OtherStatus(
      {Key? key,
      required this.name,
      required this.time,
      required this.seen,
      required this.totalNum})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CustomPaint(
        painter: StatusPainter(seen, totalNum),
        child: CircleAvatar(
          radius: 26,
          backgroundImage: AssetImage("assets/1.jpeg"),
        ),
      ),
      title: Text(
        name,
        style: TextStyle(color: Colors.black, fontSize: 16),
      ),
      subtitle: Text(
        time,
        style: TextStyle(fontSize: 14, color: Colors.black38),
      ),
    );
  }
}

class StatusPainter extends CustomPainter {
  bool isSeen;
  int totalNum;
  StatusPainter(this.isSeen, this.totalNum);
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint();
    paint.isAntiAlias = true;
    paint.strokeWidth = 6.0;
    paint.color = isSeen ? Colors.grey : Color(0xff21bfa6);
    paint.style = PaintingStyle.stroke;
    draw_arc(canvas, size, paint);
  }

  void draw_arc(Canvas canvas, Size size, Paint paint) {
    if (totalNum == 1) {
      canvas.drawArc(Rect.fromLTWH(0.0, 0.0, size.width, size.height),
          degree_to_angle(0), degree_to_angle(360), false, paint);
    } else {
      double degree = -90;
      double arc = 360 / totalNum;
      for (var i = 0; i < totalNum; i++) {
        canvas.drawArc(Rect.fromLTWH(0.0, 0.0, size.width, size.height),
            degree_to_angle(degree), degree_to_angle(arc - 6), false, paint);
        degree += arc;
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

degree_to_angle(double degree) {
  return degree * pi / 180;
}
