import 'package:first_flutter_app/base/res/styles/app_styles.dart';
import 'package:first_flutter_app/base/utils/all_jason.dart';
import 'package:first_flutter_app/base/widgets/app_column_text_layout.dart';
import 'package:first_flutter_app/screens/search/widgets/app_ticket_tabs.dart';
import 'package:first_flutter_app/screens/ticket/widgets/ticket_view_2.dart';
import 'package:flutter/material.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            "Tickets",
            style: AppStyles.headLineStyle1,
          ),
          const SizedBox(
            height: 20,
          ),
          const AppTicketTabs(
            firstTab: "Upcoming",
            secondTab: "Previous",
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TicketView2(
                ticket: ticketList[0],
              )),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                      textUp: "Flutter DB",
                      textDown: "Passenger",
                      alignment: CrossAxisAlignment.start,
                      textColorUp: Colors.black,
                      textColorDown: Colors.grey.shade500,
                    ),
                    AppColumnTextLayout(
                      textUp: "Flutter DB",
                      textDown: "Passenger",
                      alignment: CrossAxisAlignment.end,
                      textColorUp: Colors.black,
                      textColorDown: Colors.grey.shade500,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
