// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:code_structure/core/constants/app_asset.dart';
import 'package:code_structure/core/constants/auth_text_feild.dart';
import 'package:code_structure/core/constants/colors.dart';
import 'package:code_structure/core/constants/text_style.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHeader extends StatelessWidget {
  String? title;
  String? name;
  Widget? widget;
  CustomHeader({required this.title, required this.name, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(AppAssets().dashboardIcon, scale: 4),
                    5.horizontalSpace,
                    Text('$name', style: style14.copyWith(color: greyColor)),
                    5.horizontalSpace,
                    Text('$title', style: style14.copyWith(color: blackColor)),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
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
                                AppAssets().pic,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        5.horizontalSpace,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Awais khan',
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
                    ),
                  ],
                ),
              ],
            ),

            widget ?? Container(),
          ],
        ),
      ),
    );
  }
}
