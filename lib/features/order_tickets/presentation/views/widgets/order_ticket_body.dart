import 'package:flutter/material.dart';

import 'order_ticket_item.dart';

class OrderTicketsBody extends StatelessWidget {
  const OrderTicketsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 3,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: OrderTicketItem(),
        );
      },
    );
  }
}
