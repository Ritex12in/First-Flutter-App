import 'package:first_flutter_app/base/widgets/app_column_text_layout.dart';
import 'package:first_flutter_app/base/widgets/app_layout_builder_widget.dart';
import 'package:first_flutter_app/base/widgets/big_circle.dart';
import 'package:first_flutter_app/base/widgets/big_dot.dart';
import 'package:first_flutter_app/base/widgets/text_style_fourth.dart';
import 'package:first_flutter_app/base/widgets/text_style_third.dart';
import 'package:flutter/material.dart';

import '../res/styles/app_styles.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
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
                      const TextStyleThird(
                        text: 'NYC',
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
                      const TextStyleThird(
                        text: 'LDN',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                          width: 100, child: TextStyleFourth(text: "New-York")),
                      Expanded(child: Container()),
                      const TextStyleFourth(text: "8H 30M"),
                      Expanded(child: Container()),
                      const SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                          text: "London",
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
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                        textUp: "1 MAY",
                        textDown: "Date",
                        alignment: CrossAxisAlignment.start),
                    AppColumnTextLayout(
                        textUp: "08:00 AM",
                        textDown: "Departure time",
                        alignment: CrossAxisAlignment.center),
                    AppColumnTextLayout(
                        textUp: "23",
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
