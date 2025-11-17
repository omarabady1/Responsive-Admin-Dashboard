import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/generated/assets.dart';
import 'package:responsive_admin_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_admin_dashboard/widgets/expenses_card_item.dart';

import 'all_expenses_header.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsetsGeometry.all(20),
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),
          AllExpensesListView(),
        ],
      ),
    );
  }
}

class AllExpensesListView extends StatefulWidget {
  const AllExpensesListView({super.key});

  @override
  State<AllExpensesListView> createState() => _AllExpensesListViewState();
}

class _AllExpensesListViewState extends State<AllExpensesListView> {
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
  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {
        var index = e.key;
        var item = e.value;
        return Expanded(
          child: Padding(
            padding: index == 1
                ? EdgeInsetsGeometry.symmetric(horizontal: 6)
                : index == 0
                ? EdgeInsetsGeometry.only(right: 6)
                : EdgeInsetsGeometry.only(left: 6),
            child: ExpensesCardItem(item),
          ),
        );
      }).toList(),
    );
  }
}
