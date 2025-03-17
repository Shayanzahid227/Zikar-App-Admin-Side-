import 'package:code_structure/core/model/side_menu_mode;l.dart';
import 'package:code_structure/core/others/base_view_model.dart';
import 'package:flutter/material.dart';

class DashBoardViewModel extends BaseViewModel {
  List<SideMenuModel> sideMenuList = [
    SideMenuModel(icon: Icons.person_2, title: 'Profile'),
    SideMenuModel(icon: Icons.home, title: 'Home'),
    SideMenuModel(icon: Icons.leaderboard, title: 'Progress'),
  ];
}
