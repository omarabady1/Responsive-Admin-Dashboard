import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
import 'custom_drop_down_menu.dart';

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
        CustomDropDownMenu()
      ],
    );
  }
}
