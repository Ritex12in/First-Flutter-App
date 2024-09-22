import 'package:flutter/material.dart';

class BigDot extends StatelessWidget {
  final Color dotColor;
  const BigDot({super.key, this.dotColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 2.5, color: dotColor)),
    );
  }
}
