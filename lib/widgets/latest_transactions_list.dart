import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/widgets/user_info_list_tile.dart';

import '../generated/assets.dart';
import '../models/user_model.dart';

class LatestTransactionsList extends StatelessWidget {
  const LatestTransactionsList({super.key});
  final List<UserModel> users = const [
    UserModel(
      image: Assets.iconsFrame1,
      name: 'Madrani Andi',
      email: 'madraniadi20@gmail.com',
    ),
    UserModel(
      image: Assets.iconsFrame2,
      name: 'Josua Nunito',
      email: 'joshnunito@gmail.com',
    ),
    UserModel(
      image: Assets.iconsFrame1,
      name: 'Madrani Andi',
      email: 'Madraniadi20@gmail.com',
    ),
  ];
  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: users.map((e) => IntrinsicWidth(child: UserInfoListTile(user: e))).toList(),
      ),
    );

    // return SizedBox(
    //   height: 72,
    //   child: ListView.builder(
    //     itemBuilder: (context, index) {
    //       return IntrinsicWidth(child: UserInfoListTile(user: users[index]));
    //     },
    //     itemCount: users.length,
    //     scrollDirection: Axis.horizontal,
    //   ),
    // );
  }
}