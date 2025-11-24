import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/utils/app_styles.dart';
import 'package:responsive_admin_dashboard/utils/size_config.dart';
import 'package:responsive_admin_dashboard/widgets/detailed_income_chart.dart';
import 'package:responsive_admin_dashboard/widgets/income_categories.dart';
import 'package:responsive_admin_dashboard/widgets/income_chart.dart';
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
          IncomeSectionHeader(),
          SizedBox(height: 16),
          IncomeSectionBody(),
        ],
      ),
    );
  }
}

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return (width < 1620 && width > SizeConfig.desktop)
        ? Padding(
          padding: const EdgeInsets.all(20.0),
          child: DetailedIncomeChart(),
        )
        : Row(
            children: [
              Expanded(child: IncomeChart()),
              SizedBox(width: 20),
              Expanded(flex: 2, child: IncomeCategories()),
            ],
          );
  }
}

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Income', style: AppStyle.styleSemiBold20),
        CustomDropDownMenu(),
      ],
    );
  }
}
