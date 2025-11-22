import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/models/transaction_item_model.dart';
import 'package:responsive_admin_dashboard/widgets/transactions_list.dart';
import '../utils/app_styles.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});
  final List<TransactionItemModel> transactionsList = const [
    TransactionItemModel(
      title: 'Cash Withdrawal',
      amount: 20135,
      date: '22 November 2025',
      isWithdrawal: true,
    ),
    TransactionItemModel(
      title: 'Landing Page project',
      amount: 2000,
      date: '22 November 2025',
    ),
    TransactionItemModel(
      title: 'Mobile App project',
      amount: 20135,
      date: '22 November 2025',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeader(),
        SizedBox(height: 20),
        TransactionItemsList(transactionsList: transactionsList),
      ],
    );
  }
}

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Transaction History', style: AppStyle.styleSemiBold20),
        TextButton(
          onPressed: () {},
          child: Text(
            'See all',
            style: AppStyle.styleMedium16.copyWith(
              color: const Color(0xFF4EB7F2),
            ),
          ),
        ),
      ],
    );
  }
}
