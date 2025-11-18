import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/models/drawer_item_model.dart';
import 'package:responsive_admin_dashboard/widgets/drawer_item.dart';
import 'package:responsive_admin_dashboard/widgets/user_info_list_tile.dart';
import '../generated/assets.dart';
import '../models/user_model.dart';
import 'drawer_items_sliver_list.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              user: UserModel(
                image: Assets.iconsFrame3,
                name: 'soma el3ashe2',
                email: 'soma2010@yahoo.com',
              ),
            ),
          ),
          DrawerItemsSliverList(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                SizedBox(height: 20),
                Expanded(child: SizedBox()),
                InActiveItem(
                  item: DrawerItemModel(
                    icon: Assets.iconsSetting,
                    title: 'Settings',
                  ),
                ),
                SizedBox(height: 20),
                InActiveItem(
                  item: DrawerItemModel(
                    icon: Assets.iconsLogout,
                    title: 'Logout',
                  ),
                ),
                SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
