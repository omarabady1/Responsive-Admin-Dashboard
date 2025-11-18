import 'package:flutter/material.dart';
import '../utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Quick Invoice', style: AppStyle.styleSemiBold20),
        Container(
          width: 48,
          height: 48,
          decoration: ShapeDecoration(
            color: const Color(0xFFFAFAFA),
            shape: OvalBorder(),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.add, color: Color(0xFF4EB7F2)),
          ),
        ),
      ],
    );
  }
}