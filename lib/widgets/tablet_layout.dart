import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/widgets/custom_drawer.dart';
import 'mobile_layout.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 16),
        Expanded(
          flex: 3,
          child: MobileLayout(),
        ),
      ],
    );
  }
}