import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('All Expenses', style: AppStyle.styleSemiBold20),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: const Color(0xFFF1F1F1)),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Monthly', style: AppStyle.styleRegular16),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: Color(0xFF064061),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
