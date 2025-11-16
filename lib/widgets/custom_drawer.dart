import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/widgets/user_info_list_tile.dart';

import '../generated/assets.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          UserInfoListTile(image: Assets.iconsFrame3, name: 'soma el3ashe2', email: 'soma2010@yahoo.com'),
        ],
      ),
    );
  }
}