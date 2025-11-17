import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_admin_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_admin_dashboard/utils/app_styles.dart';

class ExpensesCardItem extends StatelessWidget {
  const ExpensesCardItem(this.item,{super.key});
  final AllExpensesItemModel item;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: const Color(0xFF4DB7F2),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: const Color(0xFFF1F1F1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: 60,
                    height: 60,
                    decoration: ShapeDecoration(
                      color: Colors.white.withValues(alpha: 0.10),
                      shape: OvalBorder(),
                    ),
                    child: SvgPicture.asset(item.icon)),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios_rounded, color: Color(0xFFFFFFFF)),
                ),
              ],
            ),
            SizedBox(height: 34),
            Text(item.title, style: AppStyle.styleSemiBold16),
            SizedBox(height: 8),

            Text(
              item.date,
              style: AppStyle.styleRegular14.copyWith(
                color: const Color(0xFFFAFAFA),
              ),
            ),
            SizedBox(height: 16),

            Text(
              '\$${item.amount}',
              style: AppStyle.styleSemiBold24.copyWith(
                color: const Color(0xFFFAFAFA),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
