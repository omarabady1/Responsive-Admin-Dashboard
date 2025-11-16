import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/widgets/adaptive_layout.dart';
import 'package:responsive_admin_dashboard/widgets/desktop_layout.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => SizedBox(),
        tabletLayout: (context) => SizedBox(),
        desktopLayout: (context) => DesktopLayout(),
      ),
    );
  }
}
