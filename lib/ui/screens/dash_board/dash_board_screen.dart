import 'package:code_structure/core/constants/app_asset.dart';
import 'package:code_structure/core/constants/colors.dart';
import 'package:code_structure/core/constants/text_style.dart';
import 'package:code_structure/ui/screens/analytics/analytics_screen.dart';
import 'package:code_structure/ui/screens/dash_board/dash_board_view_model.dart';
import 'package:code_structure/widgets/zikar/first_side_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class SideMenuScreen extends StatefulWidget {
  const SideMenuScreen({super.key});

  @override
  State<SideMenuScreen> createState() => _SideMenuScreenState();
}

class _SideMenuScreenState extends State<SideMenuScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DashBoardViewModel(),
      child: Consumer<DashBoardViewModel>(
        builder: (context, model, child) => Scaffold(
          backgroundColor: whiteColor,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 110.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(AppAssets().sideMenu),
                        fit: BoxFit.contain),
                  ),
                ),
                Text(
                  'dashboard',
                  style: style14.copyWith(color: blackColor, fontSize: 5.sp),
                ),
                10.verticalSpace,
                Container(
                  //  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: model.selectedScreen == 0
                        ? dashboardContainerColor
                        : whiteColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: ListTile(
                      onTap: () {
                        model.changeScreen(0);
                      },
                      title: Image.asset(
                        AppAssets().analyticsIcon,
                        scale: 3,
                        color: model.selectedScreen == 0
                            ? primaryColor
                            : blackColor,
                      ),
                      trailing: Text(
                        'Users',
                        style: style14.copyWith(
                            color: model.selectedScreen == 0
                                ? primaryColor
                                : greyColor),
                      ),
                    ),
                  ),
                ),
                Container(
                  //  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: model.selectedScreen == 1
                        ? dashboardContainerColor
                        : whiteColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 45.0),
                    child: ListTile(
                      onTap: () {
                        model.changeScreen(1);
                      },
                      title: Image.asset(
                        AppAssets().zikarReportsIcon,
                        scale: 3,
                        color: model.selectedScreen == 1
                            ? primaryColor
                            : blackColor,
                      ),
                      trailing: Text(
                        'Users',
                        style: style14.copyWith(
                            color: model.selectedScreen == 1
                                ? primaryColor
                                : greyColor),
                      ),
                    ),
                  ),
                ),
                Container(
                  //  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: model.selectedScreen == 2
                        ? dashboardContainerColor
                        : whiteColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: ListTile(
                      onTap: () {
                        model.changeScreen(2);
                      },
                      title: Image.asset(
                        AppAssets().analyticsIcon,
                        scale: 3,
                        color: model.selectedScreen == 2
                            ? primaryColor
                            : blackColor,
                      ),
                      trailing: Text(
                        'Users',
                        style: style14.copyWith(
                            color: model.selectedScreen == 2
                                ? primaryColor
                                : greyColor),
                      ),
                    ),
                  ),
                ),
                10.verticalSpace,
                //************************************  pages    **************************************************************************** */
                Text(
                  'Pages',
                  style: style14.copyWith(color: blackColor, fontSize: 5.sp),
                ),
                10.verticalSpace,
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: model.selectedScreen == 4
                          ? dashboardContainerColor
                          : whiteColor),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 45.0),
                    child: ListTile(
                      onTap: () {
                        model.changeScreen(4);
                      },
                      leading: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 15,
                        color: model.selectedScreen == 4
                            ? primaryColor
                            : blackColor,
                      ),
                      title: Image.asset(
                        AppAssets().zikarReportsIcon,
                        scale: 4,
                        color: model.selectedScreen == 4
                            ? primaryColor
                            : blackColor,
                      ),
                      trailing: Text(
                        'Users',
                        style: style14.copyWith(
                            color: model.selectedScreen == 4
                                ? primaryColor
                                : greyColor),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: model.selectedScreen == 5
                          ? dashboardContainerColor
                          : whiteColor),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 45.0),
                    child: ListTile(
                      onTap: () {
                        model.changeScreen(5);
                      },
                      leading: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 15,
                        color: model.selectedScreen == 5
                            ? primaryColor
                            : blackColor,
                      ),
                      title: Image.asset(
                        AppAssets().zikarReportsIcon,
                        scale: 4,
                        color: model.selectedScreen == 5
                            ? primaryColor
                            : blackColor,
                      ),
                      trailing: Text(
                        'Users',
                        style: style14.copyWith(
                            color: model.selectedScreen == 5
                                ? primaryColor
                                : greyColor),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: model.selectedScreen == 6
                          ? dashboardContainerColor
                          : whiteColor),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 45.0),
                    child: ListTile(
                      onTap: () {
                        model.changeScreen(6);
                      },
                      leading: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 15,
                        color: model.selectedScreen == 6
                            ? primaryColor
                            : blackColor,
                      ),
                      title: Image.asset(
                        AppAssets().zikarReportsIcon,
                        scale: 4,
                        color: model.selectedScreen == 6
                            ? primaryColor
                            : blackColor,
                      ),
                      trailing: Text(
                        'Users',
                        style: style14.copyWith(
                            color: model.selectedScreen == 6
                                ? primaryColor
                                : greyColor),
                      ),
                    ),
                  ),
                ),
                //***************************************************   pages end  ******************************************************************************* */
                Container(
                  //  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: model.selectedScreen == 7
                        ? dashboardContainerColor
                        : whiteColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: ListTile(
                      onTap: () {
                        model.changeScreen(7);
                      },
                      title: Image.asset(
                        AppAssets().analyticsIcon,
                        scale: 3,
                        color: model.selectedScreen == 7
                            ? primaryColor
                            : blackColor,
                      ),
                      trailing: Text(
                        'Users',
                        style: style14.copyWith(
                            color: model.selectedScreen == 7
                                ? primaryColor
                                : greyColor),
                      ),
                    ),
                  ),
                ),
                Container(
                  //  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: model.selectedScreen == 8
                        ? dashboardContainerColor
                        : whiteColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: ListTile(
                      onTap: () {
                        model.changeScreen(8);
                      },
                      title: Image.asset(
                        AppAssets().analyticsIcon,
                        scale: 3,
                        color: model.selectedScreen == 8
                            ? primaryColor
                            : blackColor,
                      ),
                      trailing: Text(
                        'Users',
                        style: style14.copyWith(
                            color: model.selectedScreen == 8
                                ? primaryColor
                                : greyColor),
                      ),
                    ),
                  ),
                ),
                Container(
                  //  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: model.selectedScreen == 9
                        ? dashboardContainerColor
                        : whiteColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: ListTile(
                      onTap: () {
                        model.changeScreen(9);
                      },
                      title: Image.asset(
                        AppAssets().analyticsIcon,
                        scale: 3,
                        color: model.selectedScreen == 9
                            ? primaryColor
                            : blackColor,
                      ),
                      trailing: Text(
                        'Users',
                        style: style14.copyWith(
                            color: model.selectedScreen == 9
                                ? primaryColor
                                : greyColor),
                      ),
                    ),
                  ),
                ),
                Container(
                  //  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: model.selectedScreen == 10
                        ? dashboardContainerColor
                        : whiteColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: ListTile(
                      onTap: () {
                        model.changeScreen(10);
                      },
                      title: Image.asset(
                        AppAssets().analyticsIcon,
                        scale: 3,
                        color: model.selectedScreen == 10
                            ? primaryColor
                            : blackColor,
                      ),
                      trailing: Text(
                        'Users',
                        style: style14.copyWith(
                            color: model.selectedScreen == 10
                                ? primaryColor
                                : greyColor),
                      ),
                    ),
                  ),
                ),
                Container(
                  //  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: model.selectedScreen == 11
                        ? dashboardContainerColor
                        : whiteColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: ListTile(
                      onTap: () {
                        model.changeScreen(11);
                      },
                      title: Image.asset(
                        AppAssets().analyticsIcon,
                        scale: 3,
                        color: model.selectedScreen == 11
                            ? primaryColor
                            : blackColor,
                      ),
                      trailing: Text(
                        'Users',
                        style: style14.copyWith(
                            color: model.selectedScreen == 11
                                ? primaryColor
                                : greyColor),
                      ),
                    ),
                  ),
                ),
                Container(
                  //  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: model.selectedScreen == 12
                        ? dashboardContainerColor
                        : whiteColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: ListTile(
                      onTap: () {
                        model.changeScreen(12);
                      },
                      title: Image.asset(
                        AppAssets().analyticsIcon,
                        scale: 3,
                        color: model.selectedScreen == 12
                            ? primaryColor
                            : blackColor,
                      ),
                      trailing: Text(
                        'Users',
                        style: style14.copyWith(
                            color: model.selectedScreen == 12
                                ? primaryColor
                                : greyColor),
                      ),
                    ),
                  ),
                ),
                Container(
                  //  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: model.selectedScreen == 13
                        ? dashboardContainerColor
                        : whiteColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: ListTile(
                      onTap: () {
                        model.changeScreen(13);
                      },
                      title: Image.asset(
                        AppAssets().analyticsIcon,
                        scale: 3,
                        color: model.selectedScreen == 13
                            ? primaryColor
                            : blackColor,
                      ),
                      trailing: Text(
                        'Users',
                        style: style14.copyWith(
                            color: model.selectedScreen == 13
                                ? primaryColor
                                : greyColor),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
