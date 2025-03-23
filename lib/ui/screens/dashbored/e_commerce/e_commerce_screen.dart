import 'package:code_structure/core/constants/colors.dart';
import 'package:code_structure/core/constants/text_style.dart';
import 'package:code_structure/core/model/eCommerce_activity_card.dart';
import 'package:code_structure/ui/screens/dashbored/e_commerce/e_commerce_view_model.dart';
import 'package:code_structure/ui/screens/dashbored/zikar_reports/zikar_reports_view_model.dart';
import 'package:code_structure/custom_widgets/zikar/custom_header.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class ECommerceScreen extends StatelessWidget {
  const ECommerceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ECommerceScreenViewModel(),
      child: Consumer2<ECommerceScreenViewModel, ZikarReportsViewModel>(
        builder:
            (context, ECommercemodel, zikarReportsmodel, child) => CustomHeader(
              title: 'ECommerce',
              name: 'Dashboard    /',
              widget: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  children: [
                    // SizedBox(
                    //   height: 70.h,
                    //   child: GridView.builder(
                    //     gridDelegate:
                    //         const SliverGridDelegateWithFixedCrossAxisCount(
                    //       crossAxisCount: 4,
                    //       childAspectRatio: 3,
                    //       // crossAxisSpacing: 10,
                    //       mainAxisSpacing: 10,
                    //     ),
                    //     itemCount: 4,
                    //     scrollDirection: Axis.horizontal,
                    //     shrinkWrap: true,
                    //     itemBuilder: (BuildContext context, int index) {
                    //       return Container(
                    //         height: 200.h,
                    //         decoration: BoxDecoration(
                    //             color: pinkColor,
                    //             borderRadius: BorderRadius.circular(8)),
                    //         child: Row(
                    //           crossAxisAlignment: CrossAxisAlignment.start,
                    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //           children: [
                    //             Column(
                    //               children: [
                    //                 Text('data'),
                    //                 Text('data'),
                    //                 Row(
                    //                   children: [Text('dagfds'), Text('data')],
                    //                 )
                    //               ],
                    //             ),
                    //             Column(
                    //               children: [Text('data')],
                    //             )
                    //           ],
                    //         ),
                    //       );
                    //       ;
                    //     },
                    //   ),
                    // ),
                    SizedBox(
                      height: 70.h,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Expanded(
                            child: CustomCommerceFirstActivityCard(
                              ECommerceActivityCardModelObject:
                                  ECommercemodel.eCommerceActivityCardList[0],
                            ),
                          ),
                          Expanded(
                            child: CustomCommerceFirstActivityCard(
                              ECommerceActivityCardModelObject:
                                  ECommercemodel.eCommerceActivityCardList[1],
                            ),
                          ),
                          Expanded(
                            child: CustomCommerceSecondActivityCard(
                              ECommerceActivityCardModelObject:
                                  ECommercemodel
                                      .eCommerceActivityCardChartList[0],
                            ),
                          ),
                          Expanded(
                            child: CustomCommerceSecondActivityCard(
                              ECommerceActivityCardModelObject:
                                  ECommercemodel
                                      .eCommerceActivityCardChartList[1],
                            ),
                          ),
                          Expanded(
                            child: CustomCommerceSecondActivityCard(
                              ECommerceActivityCardModelObject:
                                  ECommercemodel
                                      .eCommerceActivityCardChartList[2],
                            ),
                          ),
                          // CustomCommerceSecondActivityCard(
                          //   ECommerceActivityCardModelObject:
                          //       ECommercemodel
                          //           .eCommerceActivityCardChartList[1],
                          // ),
                          // CustomCommerceSecondActivityCard(
                          //   ECommerceActivityCardModelObject:
                          //       ECommercemodel
                          //           .eCommerceActivityCardChartList[2],
                          // ),
                        ],
                        // children: List.generate(
                        //   2,
                        //   (int index) => Expanded(
                        //     child: CustomCommerceFirstActivityCard(
                        //       ECommerceActivityCardModelObject:
                        //           ECommercemodel
                        //               .eCommerceActivityCardList[index],
                        //     ),
                        //   ),
                        // ),
                      ),
                    ),

                    //*********************************************** */

                    //********************************************** */
                    // SizedBox(
                    //   height: 200.h,
                    //   child: GridView.builder(
                    //     gridDelegate:
                    //         const SliverGridDelegateWithFixedCrossAxisCount(
                    //       crossAxisCount: 4,
                    //       mainAxisSpacing: 15,
                    //       crossAxisSpacing: 12,
                    //       // childAspectRatio: 2,
                    //     ),
                    //     itemCount: 4,
                    //     shrinkWrap: true,
                    //     scrollDirection: Axis.horizontal,
                    //     physics: NeverScrollableScrollPhysics(),
                    //     itemBuilder: (BuildContext context, int index) {
                    //       return CustomECommerceActivityCard(
                    //           eCommerceActivityCardModelObject:
                    //               ECommercemodel.eCommerceActivityCardList[index]);
                    //     },
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 70.h,
                    //   child: ListView.builder(
                    //     itemCount: ECommercemodel.eCommerceActivityCardList.length,
                    //     shrinkWrap: true,
                    //     physics: NeverScrollableScrollPhysics(),
                    //     scrollDirection: Axis.horizontal,
                    //     itemBuilder: (BuildContext context, int index) {
                    //       return Padding(
                    //         padding: EdgeInsets.all(8),
                    //         child: CustomECommerceActivityCard(
                    //             eCommerceActivityCardModelObject: ECommercemodel
                    //                 .eCommerceActivityCardList[index]),
                    //       );
                    //     },
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
      ),
    );
  }
}

///
///
///     first activity card
///
///
class CustomCommerceFirstActivityCard extends StatelessWidget {
  final ECommerceActivityCardModel ECommerceActivityCardModelObject;
  const CustomCommerceFirstActivityCard({
    required this.ECommerceActivityCardModelObject,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
          color: whiteColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${ECommerceActivityCardModelObject.title}',
                  style: style16B.copyWith(color: blackColor),
                ),
                4.verticalSpace,
                Text(
                  '${ECommerceActivityCardModelObject.value}',
                  style: style14.copyWith(fontSize: 10, color: blackColor),
                ),
                4.verticalSpace,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '${ECommerceActivityCardModelObject.percentageChange}',
                      style: style14.copyWith(fontSize: 10, color: blackColor),
                    ),
                    7.horizontalSpace,
                    Icon(
                      // Icons.keyboard_arrow_up_outlined,
                      ECommerceActivityCardModelObject.isIncrease
                          ? Icons
                              .arrow_upward // ✅ Correct usage
                          : Icons.arrow_downward, // ✅ Correct usage
                      size: 17,
                      color:
                          ECommerceActivityCardModelObject.isIncrease
                              ? secondaryColor
                              : redcolor,
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 15.r,
                  backgroundColor: thirdColor,
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.currency_bitcoin_rounded,
                      color: fourthColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

///
///
///    seconde activity card
///
///

class CustomCommerceSecondActivityCard extends StatelessWidget {
  final ECommerceActivityCardModel ECommerceActivityCardModelObject;

  const CustomCommerceSecondActivityCard({
    required this.ECommerceActivityCardModelObject,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ECommerceActivityCardModelObject.title,
                  style: style14.copyWith(
                    fontSize: 3.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

                Text(
                  ECommerceActivityCardModelObject.value,
                  style: TextStyle(fontSize: 3.sp, color: Colors.black),
                ),

                Row(
                  //crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '${ECommerceActivityCardModelObject.percentageChange}%',
                      style: TextStyle(
                        fontSize: 3.sp,
                        color:
                            ECommerceActivityCardModelObject.isIncrease
                                ? Colors.green
                                : Colors.red,
                      ),
                    ),
                    SizedBox(width: 7.w),
                    Icon(
                      ECommerceActivityCardModelObject.isIncrease
                          ? Icons.arrow_upward
                          : Icons.arrow_downward,
                      size: 17,
                      color:
                          ECommerceActivityCardModelObject.isIncrease
                              ? Colors.green
                              : Colors.red,
                    ),
                  ],
                ),
              ],
            ),
            10.horizontalSpace,
            // ✅ Replaced CircleAvatar with a Bar Chart
            Container(
              height: 50.h,
              width: 60.w,
              child: BarChart(
                BarChartData(
                  gridData: FlGridData(show: false),
                  titlesData: FlTitlesData(show: false),
                  borderData: FlBorderData(show: false),
                  barGroups:
                      ECommerceActivityCardModelObject.chartData
                          ?.asMap()
                          .entries
                          .map(
                            (entry) => BarChartGroupData(
                              x: entry.key,
                              barRods: [
                                BarChartRodData(
                                  toY: entry.value,
                                  color:
                                      ECommerceActivityCardModelObject
                                          .chartColor,
                                  width: 10,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(3),
                                    topRight: Radius.circular(3),
                                  ),
                                ),
                              ],
                            ),
                          )
                          .toList(),
                  groupsSpace: 5,
                  alignment: BarChartAlignment.start,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
