import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

import '../models/card_model.dart';
import 'card_item.dart';

class MyCardsPageView extends StatelessWidget {
  const MyCardsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      scrollDirection: Axis.horizontal,
      children: List.generate(
        3,
        (index) => CardItem(
          card: CardModel(
            holderName: 'Omar Abady',
            cardNumber: '5078 2435 7685 1906',
            expiredDate: '03/28',
            cvv: '562',
          ),
        ),
      ),
    );

    // return AspectRatio(
    //   aspectRatio: 420 / 215,
    //   child: PageView.builder(
    //     itemBuilder: (context, index) {
    //       return CardItem(
    //         card: CardModel(
    //           holderName: 'Omar Abady',
    //           cardNumber: '5078 2435 7685 1906',
    //           expiredDate: '03/28',
    //           cvv: '562',
    //         ),
    //       );
    //     },
    //     itemCount: 3,
    //     scrollDirection: Axis.horizontal,
    //   ),
    // );
  }
}
