import 'package:first_flutter_app/base/widgets/app_double_text.dart';
import 'package:first_flutter_app/base/widgets/ticket_view.dart';
import 'package:first_flutter_app/screens/widgets/hotel.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import '../base/res/media.dart';
import '../base/res/styles/app_styles.dart';
import '../base/utils/all_jason.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppStyles.bgColor,
        body: ListView(
          children: [
            const SizedBox(
              height: 40,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Good Morning", style: AppStyles.headLineStyle3),
                          const SizedBox(
                            height: 5,
                          ),
                          Text("Book Tickets", style: AppStyles.headLineStyle1)
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage(AppMedia.logo)),
                            borderRadius: BorderRadius.circular(10)),
                        width: 50,
                        height: 50,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFf4f6fd)),
                    child: const Row(
                      children: [
                        Icon(
                          FluentSystemIcons.ic_fluent_search_regular,
                          color: Color(0xFFBFC205),
                        ),
                        Text("Search")
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  AppDoubleText(
                    first: 'Upcoming Flights',
                    second: 'View all',
                    func: () => Navigator.pushNamed(context, "/all_tickets"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: ticketList
                              .take(5)
                              .map((singleTicket) => TicketView(
                                    ticket: singleTicket,
                                    margin: 16,
                                  ))
                              .toList())),
                  const SizedBox(height: 20,),
                  AppDoubleText(
                      first: 'Hotels', second: 'View all', func: () {}),
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children:
                          hotelList.take(5).map((singleHotel)=>
                              Hotel(hotel: singleHotel,)).toList(),
                      )
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
