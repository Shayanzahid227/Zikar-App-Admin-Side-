import 'package:code_structure/core/constants/app_asset.dart';
import 'package:code_structure/core/constants/colors.dart';
import 'package:code_structure/core/constants/text_style.dart';
import 'package:code_structure/ui/screens/dash_board/dash_board_view_model.dart';
import 'package:code_structure/widgets/zikar/first_side_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class DashBoardSide extends StatefulWidget {
  const DashBoardSide({super.key});

  @override
  State<DashBoardSide> createState() => _DashBoardSideState();
}

class _DashBoardSideState extends State<DashBoardSide> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DashBoardViewModel(),
      child: Consumer<DashBoardViewModel>(
        builder: (context, model, child) => Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                // Container(
                //   height: 230.h,
                //   width: double.infinity,
                //   decoration: BoxDecoration(
                //     image: DecorationImage(
                //         image: AssetImage(AppAssets().sideMenu),
                //         fit: BoxFit.cover),
                //   ),
                // ),
                // Text(
                //   'dashboard',
                //   style: style25.copyWith(color: blackColor, fontSize: 20.sp),
                // ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: model.sideMenuList.length,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return CustomSideMenuItemsWidget(
                        sideMenuModelObject: model.sideMenuList[index]);
                  },
                ),

                ///
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: model.sideMenuList.length,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return CustomSideMenuItemsWidget(
                        sideMenuModelObject: model.sideMenuList[index]);
                  },
                ),
              ],
            ),
          ),
          // body: Container(
          //   decoration: BoxDecoration(),
          //   child: ListView.builder(
          //     itemCount: model.sideMenuList.length,
          //     itemBuilder: (BuildContext context, int index) {
          //       return CustomSideMenuItemsWidget(
          //           sideMenuModelObject: model.sideMenuList[index]);
          //     },
          //   ),
          // ),
        ),
      ),
    );
  }

  // Widget buildSideMenuEntry(DashBoardViewModel model, int index) {
  //   final isSelected = selectedIndex == index;
  //   return GestureDetector(
  //     onTap: () {
  //       setState(() {
  //         selectedIndex = index;
  //       });
  //     },
  //     child: Container(
  //       decoration: BoxDecoration(
  //         color: isSelected ? whiteColor : transparentColor,
  //         borderRadius: BorderRadius.circular(8.r),
  //       ),
  //       child: Row(
  //         children: [
  //           Padding(
  //             padding: const EdgeInsets.symmetric(
  //               vertical: 7.0,
  //               horizontal: 13.0,
  //             ),
  //             child: Icon(
  //               model.sideMenuList[index].icon,
  //               size: 30,
  //               color: isSelected ? blackColor : Colors.grey,
  //             ),
  //           ),
  //           30.verticalSpace,
  //           Text(
  //             model.sideMenuList[index].title,
  //             style: style16B.copyWith(
  //               fontWeight: isSelected ? FontWeight.w700 : FontWeight.normal,
  //               color: isSelected ? blackColor : Colors.grey,
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
