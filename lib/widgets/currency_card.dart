import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;
  final blackColor = const Color(0xFF1F2123);
  final double xPos, yPos;

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
    required this.xPos,
    required this.yPos,
  });
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(xPos, yPos),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: isInverted ? Colors.white : blackColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: isInverted ? blackColor : Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          color: isInverted ? blackColor : Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        code,
                        style: TextStyle(
                          color: isInverted ? blackColor : Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Transform.scale(
                scale: 2.2,
                child: Transform.translate(
                  offset: const Offset(-5, 8),
                  child: Icon(
                    icon,
                    color: isInverted ? blackColor : Colors.white,
                    size: 70,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
