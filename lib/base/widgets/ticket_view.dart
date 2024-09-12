import 'package:first_flutter_app/base/widgets/app_layout_builder_widget.dart';
import 'package:first_flutter_app/base/widgets/big_circle.dart';
import 'package:first_flutter_app/base/widgets/big_dot.dart';
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
                      Text(
                        "NYC",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
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
                      Text(
                        "LND",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          "New-York",
                          style: AppStyles.headLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "8H 30M",
                        style: AppStyles.headLineStyle4
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: Text(
                          "London",
                          textAlign: TextAlign.end,
                          style: AppStyles.headLineStyle4
                              .copyWith(color: Colors.white),
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
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          "1 MAY",
                          style: AppStyles.headLineStyle3
                              .copyWith(color: Colors.white),
                        ),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "08:00 AM",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: Text(
                          "23",
                          textAlign: TextAlign.end,
                          style: AppStyles.headLineStyle3
                              .copyWith(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 80,
                        child: Text(
                          "Date",
                          style: AppStyles.headLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "Departure time",
                        style: AppStyles.headLineStyle4
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 80,
                        child: Text(
                          "Number",
                          textAlign: TextAlign.end,
                          style: AppStyles.headLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
