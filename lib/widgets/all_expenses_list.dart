import 'package:flutter/material.dart';
import '../generated/assets.dart';
import '../models/all_expenses_item_model.dart';
import 'expenses_card_item.dart';

class AllExpensesList extends StatefulWidget {
  const AllExpensesList({super.key});

  @override
  State<AllExpensesList> createState() => _AllExpensesListState();
}

class _AllExpensesListState extends State<AllExpensesList> {
  final List<AllExpensesItemModel> items = const [
    AllExpensesItemModel(
      title: 'Balance',
      icon: Assets.iconsBalance,
      date: 'April 2022',
      amount: 20123,
    ),
    AllExpensesItemModel(
      title: 'Income',
      icon: Assets.iconsCardReceive,
      date: 'April 2022',
      amount: 20123,
    ),
    AllExpensesItemModel(
      title: 'Balance',
      icon: Assets.iconsCardSend,
      date: 'April 2022',
      amount: 20123,
    ),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {
        var index = e.key;
        var item = e.value;
        return Expanded(
          child: GestureDetector(
            onTap: () {
              if (index != currentIndex) {
                setState(() {
                  currentIndex = index;
                });
              }
            },
            child: Padding(
              padding: index == 1
                  ? EdgeInsetsGeometry.symmetric(horizontal: 6)
                  : index == 0
                  ? EdgeInsetsGeometry.only(right: 6)
                  : EdgeInsetsGeometry.only(left: 6),
              child: ExpensesCardItem(
                item: item,
                isActive: index == currentIndex,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
