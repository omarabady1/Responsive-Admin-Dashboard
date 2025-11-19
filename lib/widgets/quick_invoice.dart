import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/utils/app_styles.dart';
import 'package:responsive_admin_dashboard/widgets/quick_invoice_form.dart';
import 'package:responsive_admin_dashboard/widgets/quick_invoice_header.dart';
import 'latest_transactions_list.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 24),
          Text('Latest Transactions', style: AppStyle.styleMedium16),
          SizedBox(height: 12),
          LatestTransactionsList(),
          Divider(color: const Color(0xffF1F1F1), height: 48,),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
