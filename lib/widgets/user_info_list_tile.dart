import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.image,
    required this.name,
    required this.email,
  });

  final String image;
  final String name;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(name, style: AppStyle.styleSemiBold16),
        subtitle: Text(email, style: AppStyle.styleRegular12),
      ),
    );
  }
}
