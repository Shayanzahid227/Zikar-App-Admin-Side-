import 'package:code_structure/core/constants/colors.dart';
import 'package:code_structure/core/constants/text_style.dart';
import 'package:code_structure/ui/screens/dash_board/dash_board_view_model.dart';
import 'package:code_structure/widgets/zikar/first_side_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class one extends StatelessWidget {
  const one({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DashBoardViewModel(),
      child: Consumer<DashBoardViewModel>(
        builder: (context, model, child) => Expanded(
          flex: 2,
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
              //  ),
              Text(
                'dashboard',
                style: style25.copyWith(color: greyColor, fontSize: 20.sp),
              ),
              SizedBox(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: model.sideMenuList.length,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return CustomSideMenuItemsWidget(
                        sideMenuModelObject: model.sideMenuList[index]);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
