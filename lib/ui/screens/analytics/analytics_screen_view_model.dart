import 'package:code_structure/core/constants/colors.dart';
import 'package:code_structure/core/model/activity_card.dart';
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
}
