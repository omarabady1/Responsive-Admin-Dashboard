import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/models/all_expenses_item_model.dart';
import 'active_and_inactive_item.dart';

class ExpensesCardItem extends StatelessWidget {
  const ExpensesCardItem({
    super.key,
    required this.item,
    required this.isActive,
  });
  final AllExpensesItemModel item;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive ? ActiveItem(item: item) : InActiveItem(item: item);
  }
}
