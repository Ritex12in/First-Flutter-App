import 'package:first_flutter_app/base/widgets/app_column_text_layout.dart';
import 'package:first_flutter_app/base/widgets/app_layout_builder_widget.dart';
import 'package:first_flutter_app/base/widgets/big_circle.dart';
import 'package:first_flutter_app/base/widgets/big_dot.dart';
import 'package:first_flutter_app/base/widgets/text_style_fourth.dart';
import 'package:first_flutter_app/base/widgets/text_style_third.dart';
import 'package:flutter/material.dart';

import '../res/styles/app_styles.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final double margin;
  const TicketView({super.key, required this.ticket, this.margin=0});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin: EdgeInsets.only(right: margin),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21)),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                       TextStyleThird(
                        text: ticket["from"]["code"],
                      ),
                      Expanded(child: Container()),
                      const BigDot(),
                      Expanded(
                          child: Stack(
                        children: [
                          const SizedBox(
                            height: 24,
                            child: AppLayoutBuilderWidget(randomDivider: 6),
                          ),
                          Center(
                              child: Transform.rotate(
                            angle: 1.57,
                            child: const Icon(
                              Icons.local_airport_rounded,
                              color: Colors.white,
                            ),
                          ))
                        ],
                      )),
                      const BigDot(),
                      Expanded(child: Container()),
                      TextStyleThird(
                        text: ticket["to"]["code"],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                       SizedBox(
                          width: 100, child: TextStyleFourth(text: ticket["from"]["name"])),
                      Expanded(child: Container()),
                      TextStyleFourth(text: ticket['flying_time']),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                          text: ticket['to']['name'],
                          textAlign: TextAlign.end,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
                height: 20,
                color: AppStyles.ticketOrange,
                child: const Row(
                  children: [
                    BigCircle(
                      topRight: 20,
                      bottomRight: 20,
                    ),
                    Expanded(
                        child: AppLayoutBuilderWidget(
                      randomDivider: 16,
                      width: 6,
                    )),
                    BigCircle(
                      topLeft: 20,
                      bottomLeft: 20,
                    )
                  ],
                )),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketOrange,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21)),
              ),
              child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                        textUp: ticket['date'],
                        textDown: "Date",
                        alignment: CrossAxisAlignment.start),
                    AppColumnTextLayout(
                        textUp: ticket['departure_time'],
                        textDown: "Departure time",
                        alignment: CrossAxisAlignment.center),
                    AppColumnTextLayout(
                        textUp: ticket['number'].toString(),
                        textDown: "Number",
                        alignment: CrossAxisAlignment.end),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
