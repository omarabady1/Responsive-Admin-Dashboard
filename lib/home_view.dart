import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/widgets/adaptive_layout.dart';
import 'package:responsive_admin_dashboard/widgets/desktop_layout.dart';
import 'package:responsive_admin_dashboard/widgets/mobile_layout.dart';
import 'package:responsive_admin_dashboard/widgets/tablet_layout.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => MobileLayout(),
        tabletLayout: (context) => TabletLayout(),
        desktopLayout: (context) => DesktopLayout(),
      ),
    );
  }
}
