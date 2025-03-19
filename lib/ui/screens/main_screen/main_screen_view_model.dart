import 'package:code_structure/core/enums/view_state_model.dart';
import 'package:code_structure/core/others/base_view_model.dart';
import 'package:code_structure/ui/screens/analytics/analytics_screen.dart';
import 'package:code_structure/ui/screens/e_commerce/e_commerce_screen.dart';
import 'package:code_structure/ui/screens/zikar_reports/zikar_report_screen.dart';
import 'package:flutter/material.dart';

class MainScreenViewModel extends BaseViewModel {
  int selectedScreen = 0;

  final List<Widget> screens = [
    AnalyticsScreen(),
    ZikarReportScreen(),
    ECommerceScreen(),
  ];
  // int? selectedScreen = 0;
  // MainScreenViewModel({this.selectedScreen}) {
  //   init();
  // }
  // init() async {
  //   setState(ViewState.busy);
  //   //await authService.getDashboardData();
  //   setState(ViewState.idle);
  //   notifyListeners();
  // }

  // changeScreen(int newScreen) {
  //   selectedScreen = newScreen;
  //   notifyListeners();
  // }
}
