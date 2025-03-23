import 'package:code_structure/core/constants/colors.dart';
import 'package:code_structure/core/model/analytics_activity_card.dart';

import 'package:code_structure/core/others/base_view_model.dart';
import 'package:flutter/material.dart';

class AnalyticsScreenViewModel extends BaseViewModel {
  List<ActivityCardModel> activityCardList = [
    ActivityCardModel(
        title: 'Active Groups',
        count: '7,234',
        variation: '+11.013',
        icon: Icons.arrow_outward_outlined,
        color: lightPurpleColor),
    ActivityCardModel(
        title: 'Active Groups',
        count: '7,234',
        variation: '+11.013',
        icon: Icons.arrow_outward_outlined,
        color: lightBlueColor),
    ActivityCardModel(
        title: 'Active Groups',
        count: '7,234',
        variation: '+11.013',
        icon: Icons.arrow_outward_outlined,
        color: lightPurpleColor),
    ActivityCardModel(
        title: 'Active Groups',
        count: '7,234',
        variation: '+11.013',
        icon: Icons.arrow_outward_outlined,
        color: lightBlueColor)
  ];
  // final List<GraphData> lineGraphData = [
  //   GraphData(month: 'Jan', thisYear: 10, lastYear: 15),
  //   GraphData(month: 'Feb', thisYear: 20, lastYear: 25),
  //   GraphData(month: 'Mar', thisYear: 30, lastYear: 20),
  //   GraphData(month: 'Apr', thisYear: 25, lastYear: 30),
  //   GraphData(month: 'May', thisYear: 15, lastYear: 20),
  //   GraphData(month: 'Jun', thisYear: 20, lastYear: 10),
  //   GraphData(month: 'Jul', thisYear: 30, lastYear: 25),
  // ];
}
