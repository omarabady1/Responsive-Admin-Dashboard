import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/widgets/custom_drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
      ],
    );
  }
}
