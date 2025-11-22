import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/widgets/transaction_item.dart';

import '../models/transaction_item_model.dart';

class TransactionItemsList extends StatelessWidget {
  const TransactionItemsList({super.key, required this.transactionsList});

  final List<TransactionItemModel> transactionsList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: transactionsList.length,
      itemBuilder: (context, index) {
        return TransactionItem(transactionsList[index]);
      },
    );
  }
}
