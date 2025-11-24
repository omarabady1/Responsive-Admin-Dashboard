import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../models/all_expenses_item_model.dart';
import '../utils/app_styles.dart';

class ActiveItem extends StatelessWidget {
  const ActiveItem({super.key, required this.item});

  final AllExpensesItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: const Color(0xFF4DB7F2),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: const Color(0xFFF1F1F1)),
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
                Flexible(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 60),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Container(
                        decoration: ShapeDecoration(
                          color: Colors.white.withValues(alpha: 0.10),
                          shape: OvalBorder(),
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            item.icon,
                            colorFilter: ColorFilter.mode(
                              const Color(0xffffffff),
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ],
            ),
            SizedBox(height: 34),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                item.title,
                style: AppStyle.styleSemiBold16(
                  context,
                ).copyWith(color: Colors.white),
              ),
            ),
            SizedBox(height: 8),

            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                item.date,
                style: AppStyle.styleRegular14(
                  context,
                ).copyWith(color: const Color(0xFFFAFAFA)),
              ),
            ),
            SizedBox(height: 16),

            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                '\$${item.amount}',
                style: AppStyle.styleSemiBold24(
                  context,
                ).copyWith(color: const Color(0xFFFAFAFA)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InActiveItem extends StatelessWidget {
  const InActiveItem({super.key, required this.item});

  final AllExpensesItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: const Color(0xFFF1F1F1)),
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
                Flexible(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 60),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Container(
                        decoration: ShapeDecoration(
                          color: const Color(0xFFFAFAFA),
                          shape: OvalBorder(),
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            item.icon,
                            colorFilter: ColorFilter.mode(
                              const Color(0xff4EB7F2),
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color(0xFF064061),
                  ),
                ),
              ],
            ),
            SizedBox(height: 34),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(item.title, style: AppStyle.styleSemiBold16(context)),
            ),
            SizedBox(height: 8),

            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(item.date, style: AppStyle.styleRegular14(context)),
            ),
            SizedBox(height: 16),

            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                '\$${item.amount}',
                style: AppStyle.styleSemiBold24(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
