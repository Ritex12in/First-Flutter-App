import 'package:first_flutter_app/base/res/styles/app_styles.dart';
import 'package:flutter/material.dart';

class AppTextIcon extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppTextIcon({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        children: [
          Icon(icon,),
          const SizedBox(width: 10,),
          Text(
            text,
            style: AppStyles.textStyle,
          )
        ],
      ),
    );
  }
}
