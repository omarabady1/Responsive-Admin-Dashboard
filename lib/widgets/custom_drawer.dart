import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/models/drawer_item_model.dart';
import 'package:responsive_admin_dashboard/widgets/drawer_item.dart';
import 'package:responsive_admin_dashboard/widgets/user_info_list_tile.dart';

import '../generated/assets.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  static List<DrawerItemModel> items = const [
    DrawerItemModel(icon: Assets.iconsDashboard, title: 'Dashboard'),
    DrawerItemModel(icon: Assets.iconsMyTransaction, title: 'My Transaction'),
    DrawerItemModel(icon: Assets.iconsStatistics, title: 'Statistics'),
    DrawerItemModel(icon: Assets.iconsWallet, title: 'Wallet Account'),
    DrawerItemModel(icon: Assets.iconsInvestments, title: 'My Investments'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          UserInfoListTile(
            image: Assets.iconsFrame3,
            name: 'soma el3ashe2',
            email: 'soma2010@yahoo.com',
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: DrawerItem(item: items[index]),
              );
            },
            itemCount: items.length,
          ),
        ],
      ),
    );
  }
}
