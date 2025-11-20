import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

import '../models/card_model.dart';
import 'card_item.dart';

class MyCardsPageView extends StatelessWidget {
  const MyCardsPageView({
    super.key,
    required this.pageController,
    required this.cards,
  });

  final PageController pageController;
  final List<CardModel> cards;

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      children: List.generate(
        cards.length,
        (index) => CardItem(card: cards[index]),
      ),
    );
  }
}
