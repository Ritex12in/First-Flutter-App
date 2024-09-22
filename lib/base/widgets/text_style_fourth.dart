import 'package:flutter/material.dart';

import '../res/styles/app_styles.dart';

class TextStyleFourth extends StatelessWidget {
  final String text;
  final Color color;
  final TextAlign textAlign;
  const TextStyleFourth({super.key, required this.text,
    this.textAlign = TextAlign.start, this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: AppStyles.headLineStyle4
          .copyWith(color: color),
    );
  }
}
