import 'package:code_structure/core/enums/view_state_model.dart';
import 'package:code_structure/core/model/side_menu_mode;l.dart';
import 'package:code_structure/core/others/base_view_model.dart';
import 'package:flutter/material.dart';

class DashBoardViewModel extends BaseViewModel {
  int? selectedScreen = 0;
  DashBoardViewModel({this.selectedScreen}) {
    init();
  }
  init() async {
    setState(ViewState.busy);

    setState(ViewState.idle);
    notifyListeners();
  }

  void changeScreen(int newScreen) {
    print('Changing screen to: $newScreen');
    selectedScreen = newScreen;
    notifyListeners();
  }

  List<SideMenuModel> sideMenuList = [
    SideMenuModel(icon: Icons.analytics_outlined, title: 'Analytics'),
    SideMenuModel(icon: Icons.folder, title: 'Zikar Reports'),
    SideMenuModel(icon: Icons.card_travel, title: 'eCommerce'),
  ];
}
