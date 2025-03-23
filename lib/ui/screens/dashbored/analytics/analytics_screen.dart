import 'package:code_structure/core/constants/app_asset.dart';
import 'package:code_structure/core/constants/auth_text_feild.dart';
import 'package:code_structure/core/constants/colors.dart';
import 'package:code_structure/core/constants/text_style.dart';
import 'package:code_structure/core/model/analytics_activity_card.dart';

import 'package:code_structure/ui/screens/dashbored/analytics/analytics_screen_view_model.dart';
import 'package:code_structure/ui/screens/dashbored/zikar_reports/zikar_reports_view_model.dart';
import 'package:code_structure/custom_widgets/zikar/custom_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class AnalyticsScreen extends StatelessWidget {
  const AnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AnalyticsScreenViewModel(),
      child: Consumer2<AnalyticsScreenViewModel, ZikarReportsViewModel>(
        builder: (context, model, Zikarmodel, child) {
          if (model.activityCardList.isEmpty) {
            return Center(child: CircularProgressIndicator());
          }
          return CustomHeader(
            title: 'Analytics',
            name: 'Dashboard    /',
            widget: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: [
                  _activityCard(model),
                  // _activityCards(model)
                  // SfCartesianChart(
                  //   title: ChartTitle(text: 'User Growth Over Time'),
                  //   legend: Legend(isVisible: true),
                  //   tooltipBehavior: TooltipBehavior(enable: true),
                  //   primaryXAxis: CategoryAxis(),
                  //   primaryYAxis: NumericAxis(),
                  //   series: <ChartSeries>[
                  //     LineSeries<GraphData, String>(
                  //       name: 'This Year',
                  //       dataSource: model.lineGraphData,
                  //       xValueMapper: (GraphData data, _) => data.month,
                  //       yValueMapper: (GraphData data, _) => data.thisYear,
                  //       color: Colors.purple,
                  //       markerSettings: MarkerSettings(isVisible: true),
                  //     ),
                  //     LineSeries<GraphData, String>(
                  //       name: 'Last Year',
                  //       dataSource: model.lineGraphData,
                  //       xValueMapper: (GraphData data, _) => data.month,
                  //       yValueMapper: (GraphData data, _) => data.lastYear,
                  //       color: Colors.blue,
                  //       markerSettings: MarkerSettings(isVisible: true),
                  //       dashArray: <double>[5, 5], // Dashed line
                  //     ),
                  //   ],
                  // ),
                  Container(
                    height: 330.h,
                    width: double.infinity,
                    decoration: BoxDecoration(),
                    child: Image.asset(
                      AppAssets().lineChart,
                      fit: BoxFit.cover,
                    ),
                  ),
                  20.verticalSpace,
                  Container(
                    height: 330.h,
                    width: double.infinity,
                    decoration: BoxDecoration(),
                    child: Image.asset(AppAssets().globe, fit: BoxFit.cover),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  ///
  ///     activity cards
  ///
  GridView _activityCard(AnalyticsScreenViewModel model) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 10,
        crossAxisSpacing: 15,
        childAspectRatio: 2,
      ),
      itemCount: model.activityCardList.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          child: CustomActivityWidget(
            activityCardModelObject: model.activityCardList[index],
          ),
        );
      },
    );
  }
}

///
///   custom health card
///
class CustomActivityWidget extends StatelessWidget {
  final ActivityCardModel activityCardModelObject;
  const CustomActivityWidget({
    super.key,
    required this.activityCardModelObject,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: activityCardModelObject.color,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${activityCardModelObject.title}',
              style: style16B.copyWith(color: blackColor),
            ),
            10.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${activityCardModelObject.count}',
                  style: style25B.copyWith(color: blackColor),
                ),
                Row(
                  children: [
                    Text(
                      '${activityCardModelObject.variation}',
                      style: style16B.copyWith(color: blackColor),
                    ),
                    2.horizontalSpace,
                    Icon(
                      activityCardModelObject.icon,
                      size: 15,
                      color: blackColor,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
