import 'package:flutter/material.dart';
import 'my_cards_page_view.dart';

class CardAndTransactionHistory extends StatelessWidget {
  const CardAndTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Column(children: [MyCardsPageView()]),
    );
  }
}
