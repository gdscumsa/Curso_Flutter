import 'package:flutter/material.dart';

class WidgetButton extends StatelessWidget {
  const WidgetButton({
    super.key,
    required this.myButtonTap,
    required this.textNum,
    required this.color,
    required this.radius,
  });

  const WidgetButton.opeButton({
    super.key,
    required this.textNum,
    required this.myButtonTap,
    this.color = Colors.blueAccent,
    this.radius = 100,
  });

  const WidgetButton.numButton({
    super.key,
    required this.textNum,
    required this.myButtonTap,
    this.color = Colors.deepPurple,
    this.radius = 18,
  });

  final String textNum;
  final Color color;
  final double radius;
  final Function myButtonTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      height: 65,
      child: ElevatedButton(
        onPressed: () {
          myButtonTap();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        child: Text(
          textNum,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
