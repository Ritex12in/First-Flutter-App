import 'package:flutter/material.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs({super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF4F6FD),
        borderRadius: BorderRadius.circular(40)
      ),
      child: Row(
        children: [
          AppTabs(tabText: firstTab, tabColor: true, tabBorder: true),
          AppTabs(tabText: secondTab, tabColor: false, tabBorder: false),
        ],
      ),
    );
  }
}

class AppTabs extends StatelessWidget {
  final String tabText;
  final bool tabColor;
  final bool tabBorder;
  const AppTabs({super.key, required this.tabText, required this.tabColor, required this.tabBorder});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width*0.44,
      padding: const EdgeInsets.symmetric(vertical: 7),
      decoration: BoxDecoration(
        color: tabColor?Colors.white:Colors.transparent,
        borderRadius: tabBorder?const BorderRadius.horizontal(left: Radius.circular(40)):
        const BorderRadius.horizontal(right: Radius.circular(40)),
      ),
      child: Center(child: Text(tabText)),
    );
  }
}

