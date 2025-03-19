import 'package:flutter/widgets.dart';

class ActivityCardModel {
  final String? title;
  final String? count;
  final String? variation;
  final IconData? icon;
  final Color? color;
  // final bool isIncrease;
  ActivityCardModel(
      {required this.count,
      required this.icon,
      required this.title,
      required this.variation,
      required this.color});
}
