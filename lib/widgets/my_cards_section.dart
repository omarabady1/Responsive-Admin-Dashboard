import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/utils/app_styles.dart';

import '../models/card_model.dart';
import 'dots_indicator.dart';
import 'my_cards_page_view.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});
  final List<CardModel> cards = const [
    CardModel(
      holderName: 'Omar Abady',
      cardNumber: '5078 2435 7685 1906',
      expiredDate: '03/28',
      cvv: '562',
    ),
    CardModel(
      holderName: 'Omar Abady',
      cardNumber: '5078 2435 7685 1906',
      expiredDate: '03/28',
      cvv: '562',
    ),
    CardModel(
      holderName: 'Omar Abady',
      cardNumber: '5078 2435 7685 1906',
      expiredDate: '03/28',
      cvv: '562',
    ),
  ];

  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
  int currentPageIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPageIndex = pageController.page!
            .round(); //round to unify the transition time forward and backward
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('My Cards', style: AppStyle.styleSemiBold20,),
        SizedBox(height: 20,),
        MyCardsPageView(pageController: pageController, cards: widget.cards),
        SizedBox(height: 19),
        DotsIndicator(
          length: widget.cards.length,
          currentPageIndex: currentPageIndex,
        ),
      ],
    );
  }
}
