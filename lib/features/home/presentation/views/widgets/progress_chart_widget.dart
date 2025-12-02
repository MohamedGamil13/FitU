import 'package:fitu/core/config/themes/app_colors.dart';
import 'package:fitu/core/config/themes/extension/theme_extension.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProgressChartWidget extends StatelessWidget {
  ProgressChartWidget({
    super.key,
    required this.title,
    required this.subtitle,
    this.containerWidth = 150,
    this.height = 70,
  });
  final String title;
  final String subtitle;
  final double containerWidth;
  final double height;

  final List<PieChartSectionData> pieChartSelectionDatas = [
    PieChartSectionData(
      color: AppColors.outlineBorderColorDark,
      value: 40,
      title: '40%',
      radius: 15,
      titleStyle: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    PieChartSectionData(
      color: AppColors.primaryColor,
      value: 60,
      title: '60%',
      radius: 18,
      titleStyle: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerWidth.w,
      height: height.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: context.isdarkMode
            ? AppColors.fillColorDark
            : AppColors.whtColor,
        border: Border.all(
          color: context.isdarkMode
              ? AppColors.outlineBorderColorDark
              : AppColors.gray10,
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: PieChart(PieChartData(sections: pieChartSelectionDatas)),
      ),
    );
  }
}
