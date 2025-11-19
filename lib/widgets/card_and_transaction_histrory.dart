import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/models/card_model.dart';
import 'package:responsive_admin_dashboard/widgets/card_item.dart';

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
      child: Column(
        children: [
          CardItem(
            card: CardModel(
              holderName: 'Omar Abady',
              cardNumber: '5078 2435 7685 1906',
              expiredDate: '03/28',
              cvv: '562',
            ),
          ),
        ],
      ),
    );
  }
}
