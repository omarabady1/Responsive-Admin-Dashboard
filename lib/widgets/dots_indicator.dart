import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/widgets/custom_dot_indicator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({
    super.key,
    required this.length,
    required this.currentPageIndex,
  });
  final int length;
  final int currentPageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        length,
        (index) => CustomDotIndicator(isActive: index == currentPageIndex),
      ),
    );
  }
}
