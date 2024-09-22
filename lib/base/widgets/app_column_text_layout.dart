import 'package:first_flutter_app/base/widgets/text_style_fourth.dart';
import 'package:first_flutter_app/base/widgets/text_style_third.dart';
import 'package:flutter/material.dart';

class AppColumnTextLayout extends StatelessWidget {
  final String textUp;
  final String textDown;
  final CrossAxisAlignment alignment;
  final Color textColorUp;
  final Color textColorDown;
  const AppColumnTextLayout(
      {super.key,
      required this.textUp,
      required this.textDown,
      required this.alignment,
      this.textColorUp = Colors.white,
      this.textColorDown = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        TextStyleThird(
          text: textUp,
          color: textColorUp,
        ),
        TextStyleFourth(
          text: textDown,
          color: textColorDown,
        )
      ],
    );
  }
}
