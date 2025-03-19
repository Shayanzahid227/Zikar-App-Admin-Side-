import 'package:code_structure/core/constants/colors.dart';
import 'package:code_structure/ui/screens/analytics/analytics_screen.dart';
import 'package:code_structure/ui/screens/dash_board/dash_board_screen.dart';
import 'package:code_structure/ui/screens/e_commerce/e_commerce_screen.dart';
import 'package:code_structure/ui/screens/zikar_reports/zikar_report_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: blackColor,
            child: SideMenuScreen(),
          ),
        ),
        Expanded(
          flex: 7,
          child: Container(
            color: greyColor,
            child: ECommerceScreen(),
          ),
        ),
      ],
    );
  }
}
