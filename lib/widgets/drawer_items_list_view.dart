import 'package:flutter/material.dart';

import '../generated/assets.dart';
import '../models/drawer_item_model.dart';
import 'drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({super.key});

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  final List<DrawerItemModel> items = const [
    DrawerItemModel(icon: Assets.iconsDashboard, title: 'Dashboard'),
    DrawerItemModel(icon: Assets.iconsMyTransaction, title: 'My Transaction'),
    DrawerItemModel(icon: Assets.iconsStatistics, title: 'Statistics'),
    DrawerItemModel(icon: Assets.iconsWallet, title: 'Wallet Account'),
    DrawerItemModel(icon: Assets.iconsInvestments, title: 'My Investments'),
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              if (activeIndex != index) {
                activeIndex = index;
              }
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: DrawerItem(item: items[index], isActive: index == activeIndex),
          ),
        );
      },
      itemCount: items.length,
    );
  }
}
