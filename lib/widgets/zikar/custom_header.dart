import 'package:code_structure/core/constants/app_asset.dart';
import 'package:code_structure/core/constants/auth_text_feild.dart';
import 'package:code_structure/core/constants/colors.dart';
import 'package:code_structure/core/constants/text_style.dart';
import 'package:code_structure/core/model/dashboard_heder_model.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHeader extends StatelessWidget {
  final DashBoardHeaderModel dashBoardHeaderModelObject;
  const CustomHeader({super.key, required this.dashBoardHeaderModelObject});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.h,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                AppAssets().dashboardIcon,
                scale: 4,
              ),
              5.horizontalSpace,
              Text(
                'Dashboard     /',
                style: style14.copyWith(color: greyColor),
              ),
              5.horizontalSpace,
              Text(
                'Analytics',
                style: style14.copyWith(color: blackColor),
              )
            ],
          ),
          Row(
            children: [
              Container(
                height: 28.h,
                width: 60.w,
                child: Padding(
                  padding: EdgeInsets.all(1),
                  child: TextFormField(
                    decoration: authFieldDecoration.copyWith(),
                  ),
                ),
              ),
              5.horizontalSpace,
              Image.asset(
                AppAssets().themeIcon,
                scale: 4,
                fit: BoxFit.cover,
              ),
              5.horizontalSpace,
              Image.asset(
                AppAssets().notificationIcon,
                scale: 4,
                fit: BoxFit.cover,
              ),
              5.horizontalSpace,

              ///   error why ?
              // ListTile(
              //   leading: CircleAvatar(
              //     radius: 20.r,
              //     backgroundColor: darkBlueColor,
              //     child: Padding(
              //       padding: EdgeInsets.all(3),
              //       child: Image.asset(
              //         AppAssets().pic,
              //         fit: BoxFit.cover,
              //       ),
              //     ),
              //   ),
              //   title: Text(
              //     'user name ',
              //     style: style14B.copyWith(
              //       color: blackColor,
              //       fontSize: 12.sp,
              //     ),
              //   ),
              //   subtitle: Text(
              //     'Manager ',
              //     style: style14B.copyWith(
              //       color: blackColor,
              //       fontSize: 12.sp,
              //     ),
              //   ),
              // ),
              5.horizontalSpace,
              Row(
                children: [
                  CircleAvatar(
                    radius: 20.r,
                    backgroundColor: darkBlueColor,
                    child: Padding(
                        padding: EdgeInsets.all(3),
                        child: CircleAvatar(
                          backgroundColor: Colors.orange,
                          child: Image.asset(
                            '${dashBoardHeaderModelObject.userImageUrl}',
                            fit: BoxFit.cover,
                          ),
                        )),
                  ),
                  5.horizontalSpace,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${dashBoardHeaderModelObject.userName}',
                        style: style14B.copyWith(
                          color: blackColor,
                          fontSize: 4.sp,
                        ),
                      ),
                      Text(
                        'Manager',
                        style: style14B.copyWith(
                          color: Color(0xffA3B6CC),
                          fontSize: 4.sp,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
