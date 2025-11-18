import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/widgets/all_expenses.dart';
import 'package:responsive_admin_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_admin_dashboard/widgets/quick_invoice.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [AllExpenses(), SizedBox(height: 24), QuickInvoice()],
          ),
        ),
      ],
    );
  }
}
