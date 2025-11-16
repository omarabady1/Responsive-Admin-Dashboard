import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_admin_dashboard/models/drawer_item_model.dart';
import 'package:responsive_admin_dashboard/utils/app_styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.item});
  final DrawerItemModel item;
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 180),
      child: ListTile(
        leading: SvgPicture.asset(item.icon),
        title: Text(item.title, style: AppStyle.styleRegular16),
        horizontalTitleGap: 10,
        contentPadding: EdgeInsets.symmetric(horizontal: 4),
        //dense: true,
      ),
    );
  }
}
