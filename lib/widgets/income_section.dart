import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/utils/app_styles.dart';

import 'custom_drop_down_menu.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Income', style: AppStyle.styleSemiBold20),
              CustomDropDownMenu(),
            ],
          ),
        ],
      ),
    );
  }
}
