import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/models/income_category_model.dart';
import 'package:responsive_admin_dashboard/utils/app_styles.dart';

class IncomeCategories extends StatelessWidget {
  const IncomeCategories({super.key});
  final List<IncomeCategoryModel> categories = const [
    IncomeCategoryModel(
      title: 'Design service',
      color: Color(0xFF208BC7),
      percentage: 40,
    ),
    IncomeCategoryModel(
      title: 'Design production',
      color: Color(0xFF4DB7F2),
      percentage: 25,
    ),
    IncomeCategoryModel(
      title: 'Product royalty',
      color: Color(0xFF064060),
      percentage: 20,
    ),
    IncomeCategoryModel(
      title: 'Other',
      color: Color(0xFFE2DECD),
      percentage: 15,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: categories.map((e) => IncomeCategoryItem(e)).toList(),
    );
  }
}

class IncomeCategoryItem extends StatelessWidget {
  const IncomeCategoryItem(this.item, {super.key});
  final IncomeCategoryModel item;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(color: item.color, shape: OvalBorder()),
      ),
      title: Text(item.title, style: AppStyle.styleRegular16(context)),
      trailing: Text(
        '${item.percentage}%',
        style: AppStyle.styleMedium16(context).copyWith(color: const Color(0xFF208CC8)),
      ),
    );
  }
}
