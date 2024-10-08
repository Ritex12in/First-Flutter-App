import 'package:first_flutter_app/base/res/media.dart';
import 'package:first_flutter_app/base/res/styles/app_styles.dart';
import 'package:first_flutter_app/screens/search/widgets/app_text_icon.dart';
import 'package:first_flutter_app/screens/search/widgets/app_ticket_tabs.dart';
import 'package:first_flutter_app/screens/search/widgets/find_tickets.dart';
import 'package:first_flutter_app/screens/search/widgets/ticket_promotion.dart';
import 'package:flutter/material.dart';

import '../../base/widgets/app_double_text.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        children: [
          const SizedBox(height: 40,),
          Text(
            "What are\nyou looking for?",
            style: AppStyles.headLineStyle1.copyWith(fontSize: 35),
          ),
          const SizedBox(height: 20,),
          const AppTicketTabs(firstTab: "All Tickets",secondTab: "Hotels",),
          const SizedBox(height: 25,),
          const AppTextIcon(text: "Departure",icon: Icons.flight_takeoff_rounded,),
          const SizedBox(height: 20,),
          const AppTextIcon(text: "Arrival",icon: Icons.flight_land_rounded,),
          const SizedBox(height: 20,),
          const FindTickets(),
          const SizedBox(
            height: 40,
          ),
          AppDoubleText(
            first: 'Upcoming Flights',
            second: 'View all',
            func: () => Navigator.pushNamed(context, "/all_tickets"),
          ),
          const SizedBox(height: 15,),
          const TicketPromotion(),
        ],
      ),
    );
  }
}
