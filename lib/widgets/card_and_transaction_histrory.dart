import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/widgets/my_cards_section.dart';

class CardAndTransactionHistory extends StatelessWidget {
  const CardAndTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40,),
        Container(
          padding: EdgeInsets.all(24),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
          child: MyCardsSection(),
        ),
      ],
    );
  }
}
