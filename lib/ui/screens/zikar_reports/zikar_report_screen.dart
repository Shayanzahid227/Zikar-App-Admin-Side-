import 'package:code_structure/core/constants/app_asset.dart';
import 'package:code_structure/core/constants/colors.dart';
import 'package:code_structure/ui/screens/analytics/analytics_screen.dart';
import 'package:code_structure/ui/screens/analytics/analytics_screen_view_model.dart';
import 'package:code_structure/ui/screens/zikar_reports/zikar_reports_view_model.dart';
import 'package:code_structure/widgets/zikar/custom_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:provider/provider.dart';

class ZikarReportScreen extends StatelessWidget {
  const ZikarReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ZikarReportsViewModel(),
      child: Consumer2<ZikarReportsViewModel, AnalyticsScreenViewModel>(
        builder: (
          context,
          model,
          zikarRepotModel,
          child,
        ) =>
            Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CustomHeader(
                    dashBoardHeaderModelObject: model.dashboardHeader[0],
                  ),
                  Divider(
                    color: greyColor,
                    height: 1,
                  ),
                  20.verticalSpace,
                  _activityCard(zikarRepotModel),
                  20.verticalSpace,
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
                    child: Image.asset(
                      AppAssets().zikarchart,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  ///
  ///     activity cards
  ///
  GridView _activityCard(AnalyticsScreenViewModel zikarRepotModel) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 10,
        crossAxisSpacing: 15,
        childAspectRatio: 2,
      ),
      itemCount: zikarRepotModel.activityCardList.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          child: CustomActivityWidget(
              activityCardModelObject: zikarRepotModel.activityCardList[index]),
        );
      },
    );
  }

  ///

  ///
}
