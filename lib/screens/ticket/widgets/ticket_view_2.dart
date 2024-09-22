import 'package:first_flutter_app/base/widgets/app_column_text_layout.dart';
import 'package:first_flutter_app/base/widgets/app_layout_builder_widget.dart';
import 'package:first_flutter_app/base/widgets/big_circle.dart';
import 'package:first_flutter_app/base/widgets/big_dot.dart';
import 'package:first_flutter_app/base/widgets/text_style_fourth.dart';
import 'package:first_flutter_app/base/widgets/text_style_third.dart';
import 'package:flutter/material.dart';

import '../../../base/res/styles/app_styles.dart';

class TicketView2 extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final double margin;
  const TicketView2({super.key, required this.ticket, this.margin = 0});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 180,
      child: Container(
        margin: EdgeInsets.only(right: margin),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21)),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      TextStyleThird(
                        text: ticket["from"]["code"],
                        color: Colors.black,
                      ),
                      Expanded(child: Container()),
                      BigDot(
                        dotColor: AppStyles.dotColor,
                      ),
                      Expanded(
                          child: Stack(
                        children: [
                          const SizedBox(
                            height: 24,
                            child: AppLayoutBuilderWidget(
                              randomDivider: 6,
                            ),
                          ),
                          Center(
                              child: Transform.rotate(
                            angle: 1.57,
                            child: Icon(
                              Icons.local_airport_rounded,
                              color: AppStyles.planeSecondColor,
                            ),
                          ))
                        ],
                      )),
                      BigDot(
                        dotColor: AppStyles.dotColor,
                      ),
                      Expanded(child: Container()),
                      TextStyleThird(
                        text: ticket["to"]["code"],
                        color: Colors.black,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                          text: ticket["from"]["name"],
                          color: Colors.grey.shade500,
                        ),
                      ),
                      Expanded(child: Container()),
                      TextStyleFourth(
                        text: ticket['flying_time'],
                        color: Colors.grey.shade500,
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                          text: ticket['to']['name'],
                          textAlign: TextAlign.end,
                          color: Colors.grey.shade500,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
                height: 20,
                color: Colors.white,
                child: Row(
                  children: [
                    BigCircle(
                      topRight: 20,
                      bottomRight: 20,
                      color: AppStyles.bgColor,
                    ),
                    Expanded(
                        child: AppLayoutBuilderWidget(
                      randomDivider: 16,
                      width: 6,
                      color: Colors.grey.shade300,
                    )),
                    BigCircle(
                      topLeft: 20,
                      bottomLeft: 20,
                      color: AppStyles.bgColor,
                    )
                  ],
                )),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Colors.white,
                // borderRadius: BorderRadius.only(
                //     bottomLeft: Radius.circular(21),
                //     bottomRight: Radius.circular(21)),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                      textUp: ticket['date'],
                      textDown: "Date",
                      alignment: CrossAxisAlignment.start,
                      textColorUp: Colors.black,
                      textColorDown: Colors.grey.shade500,
                    ),
                    AppColumnTextLayout(
                      textUp: ticket['departure_time'],
                      textDown: "Departure time",
                      alignment: CrossAxisAlignment.center,
                      textColorUp: Colors.black,
                      textColorDown: Colors.grey.shade500,
                    ),
                    AppColumnTextLayout(
                      textUp: ticket['number'].toString(),
                      textDown: "Number",
                      alignment: CrossAxisAlignment.end,
                      textColorUp: Colors.black,
                      textColorDown: Colors.grey.shade500,
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
