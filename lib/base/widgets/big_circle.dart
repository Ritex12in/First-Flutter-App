import 'package:flutter/material.dart';

class BigCircle extends StatelessWidget {
  final double topRight;
  final double bottomRight;
  final double topLeft;
  final double bottomLeft;
  const BigCircle({
    super.key,
    this.topRight = 0,
    this.bottomRight = 0,
    this.topLeft = 0,
    this.bottomLeft = 0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 10,
      child: DecoratedBox(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(topRight),
                  bottomRight: Radius.circular(bottomRight),
                  topLeft: Radius.circular(topLeft),
                  bottomLeft: Radius.circular(bottomLeft)))),
    );
  }
}
