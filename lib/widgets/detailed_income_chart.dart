import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          setState(() {
            activeIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          });
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          title: activeIndex == 0 ? 'Design Service' : '40%',
          titleStyle: activeIndex == 0
              ? AppStyle.styleSemiBold16(context)
              : AppStyle.styleSemiBold16(context).copyWith(color: Colors.white),
          titlePositionPercentageOffset: activeIndex == 0 ? 1.4 : null,
          radius: activeIndex == 0 ? 50 : 45,
          value: 40,
          color: const Color(0xFF208BC7),
          showTitle: true,
        ),
        PieChartSectionData(
          titleStyle: activeIndex == 1
              ? AppStyle.styleSemiBold16(context)
              : AppStyle.styleSemiBold16(context).copyWith(color: Colors.white),
          title: activeIndex == 1 ? 'Design Production' : '25%',
          titlePositionPercentageOffset: activeIndex == 1 ? -1.3 : null,
          radius: activeIndex == 1 ? 50 : 45,
          value: 25,
          color: const Color(0xFF4DB7F2),
          showTitle: true,
        ),
        PieChartSectionData(
          titleStyle: activeIndex == 2
              ? AppStyle.styleSemiBold16(context)
              : AppStyle.styleSemiBold16(context).copyWith(color: Colors.white),
          title: activeIndex == 2 ? 'Product Royalty' : '20%',
          titlePositionPercentageOffset: activeIndex == 2 ? 1.3 : null,
          radius: activeIndex == 2 ? 50 : 45,
          value: 20,
          color: const Color(0xFF064060),
          showTitle: true,
        ),
        PieChartSectionData(
          titleStyle: activeIndex == 3
              ? AppStyle.styleSemiBold16(context)
              : AppStyle.styleSemiBold16(context).copyWith(color:  const Color(0xFF064060)),
          title: activeIndex == 3 ? 'Other' : '15%',
          titlePositionPercentageOffset: activeIndex == 3 ? 1.5 : null,
          radius: activeIndex == 3 ? 50 : 45,
          value: 15,
          color: const Color(0xFFE2DECD),
          showTitle: true,
        ),
      ],
    );
  }
}
