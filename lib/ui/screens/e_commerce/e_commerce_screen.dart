import 'package:code_structure/core/constants/colors.dart';
import 'package:code_structure/core/model/eCommerce_activity_card.dart';
import 'package:code_structure/ui/screens/e_commerce/e_commerce_view_model.dart';
import 'package:code_structure/ui/screens/zikar_reports/zikar_reports_view_model.dart';
import 'package:code_structure/widgets/zikar/custom_header.dart';
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
        builder: (context, ECommercemodel, zikarReportsmodel, child) =>
            Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                CustomHeader(
                    dashBoardHeaderModelObject:
                        zikarReportsmodel.dashboardHeader[0]),
                Divider(
                  color: greyColor,
                  thickness: 0.7,
                ),
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
                  height: 100.h,
                  child: Row(
                    children: List.generate(
                        4,
                        (int index) => Expanded(
                              child: Container(
                                //  height: 200.h,
                                decoration: BoxDecoration(
                                    color: pinkColor,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text('data'),
                                        Text('data'),
                                        Row(
                                          children: [
                                            Text('dagfds'),
                                            Text('data')
                                          ],
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [Text('data')],
                                    )
                                  ],
                                ),
                              ),
                            )),
                  ),
                ),

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

class CustomECommerceActivityCard extends StatelessWidget {
  final ECommerceActivityCardModel eCommerceActivityCardModelObject;
  CustomECommerceActivityCard(
      {super.key, required this.eCommerceActivityCardModelObject});

  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: pinkColor,
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${eCommerceActivityCardModelObject.value}',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    '${eCommerceActivityCardModelObject.title}',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Row(
                    children: [
                      Text(
                        // "${percentageChange.toStringAsFixed(2)}% ",
                        '${eCommerceActivityCardModelObject.percentageChange}',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: eCommerceActivityCardModelObject.isIncrease
                              ? Colors.green
                              : Colors.red,
                        ),
                      ),
                      Icon(
                        eCommerceActivityCardModelObject.isIncrease
                            ? Icons.arrow_upward
                            : Icons.arrow_downward,
                        size: 12.sp,
                        color: eCommerceActivityCardModelObject.isIncrease
                            ? Colors.green
                            : Colors.red,
                      ),
                    ],
                  ),
                ],
              ),
              // CircleAvatar(
              //   backgroundColor: Colors.blue.withOpacity(0.1),
              //   child: Image.asset(eCommerceActivityCardModelObject.icon, width: 24.w, height: 24.h),
              // ),
            ],
          ),
          SizedBox(height: 16.h),
          SizedBox(
            height: 40.h,
            // child: LineChart(
            //   LineChartData(
            //     gridData: FlGridData(show: false),
            //     titlesData: FlTitlesData(show: false),
            //     borderData: FlBorderData(show: false),
            //     lineBarsData: [
            //       LineChartBarData(
            //         spots: List.generate(chartData.length,
            //           (index) => FlSpot(index.toDouble(), chartData[index])),
            //         isCurved: true,
            //         colors: [chartColor],
            //         barWidth: 3,
            //         isStrokeCapRound: true,
            //         dotData: FlDotData(show: false),
            //       ),
            //     ],
            //   ),
            // ),
          ),
        ],
      ),
    );
  }
}
