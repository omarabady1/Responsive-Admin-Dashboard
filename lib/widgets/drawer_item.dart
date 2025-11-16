import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_admin_dashboard/models/drawer_item_model.dart';
import 'package:responsive_admin_dashboard/utils/app_styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.item, required this.isActive});
  final DrawerItemModel item;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive ? ActiveItem(item: item) : InActiveItem(item: item);
  }
}

class InActiveItem extends StatelessWidget {
  const InActiveItem({super.key, required this.item});
  final DrawerItemModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(item.icon),
      title: Text(item.title, style: AppStyle.styleRegular16),
    );
  }
}

class ActiveItem extends StatelessWidget {
  const ActiveItem({super.key, required this.item});
  final DrawerItemModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(item.icon),
      title: Text(item.title, style: AppStyle.styleBold16),
      trailing: Container(
        width: 3.27,
        decoration: BoxDecoration(color: const Color(0xFF4EB7F2)),
      ),
    );
  }
}
