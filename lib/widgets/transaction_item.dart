import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/models/transaction_item_model.dart';
import 'package:responsive_admin_dashboard/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem(this.item, {super.key});
  final TransactionItemModel item;
  @override
  Widget build(BuildContext context) {
    return Card(
      //padding: const EdgeInsets.all(16),
      //margin: const EdgeInsets.only(bottom: 12),
      // decoration: ShapeDecoration(
      //   color: const Color(0xFFFAFAFA),
      //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      // ),
      elevation: 0,
      color: const Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        padding: const EdgeInsets.all(16),
        child: ListTile(
          title: Text(item.title, style: AppStyle.styleSemiBold16),
          subtitle: Text(
            item.date,
            style: AppStyle.styleRegular16.copyWith(
              color: const Color(0xFFAAAAAA),
            ),
          ),
          trailing: Text(
            '\$${item.amount}',
            style: AppStyle.styleSemiBold20.copyWith(
              color: item.isWithdrawal == true
                  ? const Color(0xFFF3735E)
                  : const Color(0xFF7CD87A),
            ),
          ),
        ),
      ),
    );
  }
}
