import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color backgroundcolor;
  final Color textcolor;
  final BorderRadiusGeometry circle;

  const Button({
    super.key,
    required this.text,
    required this.backgroundcolor,
    required this.textcolor,
    required this.circle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: circle,
        color: backgroundcolor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 22,
            color: textcolor,
          ),
        ),
      ),
    );
  }
}
