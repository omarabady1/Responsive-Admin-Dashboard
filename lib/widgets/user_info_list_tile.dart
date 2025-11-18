import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_admin_dashboard/models/user_model.dart';
import '../utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.user
  });

  final UserModel user;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(user.image),
        title: Text(user.name, style: AppStyle.styleSemiBold16),
        subtitle: Text(user.email, style: AppStyle.styleRegular12),
      ),
    );
  }
}
