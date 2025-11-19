import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(title: 'Customer Name', hint: 'Type customer name',),
            ),
            Expanded(
              child: TitleTextField(title: 'Customer Email', hint: 'Type customer email',),
            ),
          ],
        ),
        SizedBox(height: 24,),
        Row(
          children: [
            Expanded(
              child: TitleTextField(title: 'Item Name', hint: 'Type item name',),
            ),
            Expanded(
              child: TitleTextField(title: 'Item Amount', hint: 'Type amount',),
            ),
          ],
        ),
        SizedBox(height: 24,),
      ],
    );
  }
}