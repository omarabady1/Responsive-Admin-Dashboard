import 'package:flutter/material.dart';
import 'all_expenses_and_quick_invoice_section.dart';
import 'card_and_transaction_histrory.dart';
import 'income_section.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          SizedBox(height: 12),
          CardAndTransactionHistory(),
          SizedBox(height: 12,),
          IncomeSection(),
        ],
      ),
    );
  }
}
