import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/widgets/quick_invoice.dart';
import 'all_expenses.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 40),
          AllExpenses(),
          SizedBox(height: 24),
          QuickInvoice(),
        ],
      ),
    );
  }
}
