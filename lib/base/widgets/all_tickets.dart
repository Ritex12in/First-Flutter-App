import 'package:first_flutter_app/base/utils/all_jason.dart';
import 'package:first_flutter_app/base/widgets/ticket_view.dart';
import 'package:flutter/material.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Tickets"),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: ticketList.map((singleTicket) =>
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                      child: TicketView(ticket: singleTicket))).toList(),
            ),
          )
        ],
      ),
    );
  }
}
