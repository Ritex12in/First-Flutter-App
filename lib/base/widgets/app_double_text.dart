import 'package:first_flutter_app/base/res/styles/app_styles.dart';
import 'package:first_flutter_app/base/widgets/all_tickets.dart';
import 'package:flutter/material.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText({super.key, required this.first, required this.second});
  final String first;
  final String second;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          first,
          style: AppStyles.headLineStyle2,
        ),
        InkWell(
          onTap: ()=> Navigator.pushNamed(context, "all_tickets"),
          child: Text(
            second,
            style: AppStyles.textStyle.copyWith(color: AppStyles.primaryColor),
          ),
        )
      ],
    );
  }
}
