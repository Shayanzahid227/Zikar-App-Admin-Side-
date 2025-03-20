import 'package:code_structure/core/model/eCommerce_activity_card.dart';
import 'package:code_structure/core/others/base_view_model.dart';
import 'package:flutter/material.dart';

class ECommerceScreenViewModel extends BaseViewModel {
  List<ECommerceActivityCardModel> eCommerceActivityCardList = [
    ECommerceActivityCardModel(
      title: '10.54',
      value: 'total reven',
      percentageChange: 22.45,
      isIncrease: true,
    ),
    ECommerceActivityCardModel(
      title: '10.54',
      value: 'total reven',
      percentageChange: -10.45,
      isIncrease: false,
    ),
  ];
  List<ECommerceActivityCardModel> eCommerceActivityCardChartList = [
    ECommerceActivityCardModel(
      title: 'Total Revenue',
      value: '10.54',
      percentageChange: 22.45,
      isIncrease: true,
      chartData: [10, 5, 3, 8, 4, 12, 9], // ✅ Example data
      chartColor: Colors.green, // ✅ Example color
    ),
    ECommerceActivityCardModel(
      title: 'Total Expenses',
      value: '5.12',
      percentageChange: -10.45,
      isIncrease: false,
      chartData: [10, 5, 3, 8, 4, 12, 9], // ✅ Example data
      chartColor: Colors.red, // ✅ Example color
    ),
    ECommerceActivityCardModel(
      title: 'Total Expenses',
      value: '5.12',
      percentageChange: -10.45,
      isIncrease: false,
      chartData: [10, 5, 3, 8, 4, 12, 9], // ✅ Example data
      chartColor: Colors.red, // ✅ Example color
    ),
  ];
}
