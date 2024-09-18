import 'package:first_flutter_app/base/res/styles/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FindTickets extends StatelessWidget {
  const FindTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
      decoration: BoxDecoration(
        color: AppStyles.findTicketColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          "Find Tickets",
          style: AppStyles.textStyle.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
