import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/widgets/card_and_transaction_histrory.dart';
import 'package:responsive_admin_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_admin_dashboard/widgets/income_section.dart';
import 'all_expenses_and_quick_invoice_section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(flex: 2, child: AllExpensesAndQuickInvoiceSection()),
        SizedBox(width: 24),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                CardAndTransactionHistory(),
                SizedBox(height: 24),
                IncomeSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
