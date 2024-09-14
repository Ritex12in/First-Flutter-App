import 'package:first_flutter_app/base/bottom_nav_bar.dart';
import 'package:first_flutter_app/base/widgets/all_tickets.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const BottomNavBar(),
        "/all_tickets": (context) => const AllTickets()
      },
    );
  }
}

