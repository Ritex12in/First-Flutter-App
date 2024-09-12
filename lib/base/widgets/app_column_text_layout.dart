import 'package:first_flutter_app/base/widgets/text_style_third.dart';
import 'package:flutter/cupertino.dart';

class AppColumnTextLayout extends StatelessWidget {
  final String textUp;
  final String textDown;
  final CrossAxisAlignment alignment;
  const AppColumnTextLayout(
      {super.key,
      required this.textUp,
      required this.textDown,
      required this.alignment});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [TextStyleThird(text: textUp), TextStyleThird(text: textDown)],
    );
  }
}
