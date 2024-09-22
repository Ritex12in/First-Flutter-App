import 'package:flutter/material.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final int randomDivider;
  final double width;
  final Color color;
  const AppLayoutBuilderWidget({super.key, required this.randomDivider,
    this.width = 3, this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constrains) {
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(
              (constrains.constrainWidth() / randomDivider).floor(),
              (index) => SizedBox(
                width: width,
                height: 1,
                child: DecoratedBox(decoration: BoxDecoration(
                  color: color,
                )),
              )),
        );
      },
    );
  }
}
