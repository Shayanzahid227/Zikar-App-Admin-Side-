import 'package:code_structure/core/constants/auth_text_feild.dart';
import 'package:code_structure/core/constants/colors.dart';
import 'package:code_structure/core/constants/text_style.dart';
import 'package:code_structure/core/model/activity_card.dart';
import 'package:code_structure/ui/screens/analytics/analytics_screen_view_model.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class AnalyticsScreen extends StatelessWidget {
  const AnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AnalyticsScreenViewModel(),
      child: Consumer<AnalyticsScreenViewModel>(
        builder: (context, model, child) => Scaffold(
          body: Column(
            children: [CustomHeaderWidget(), _divider(), _activityCards(model)],
          ),
        ),
      ),
    );
  }

  ///
  ///    divider
  ///
  Widget _divider() {
    return Divider(
      color: Colors.grey.shade200,
    );
  }

  ///
  ///     activity cards
  ///
  Widget _activityCards(AnalyticsScreenViewModel model) {
    return SizedBox(
      height: 300.h,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          childAspectRatio: 10,
        ),
        itemCount: model.activityCardList.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.all(8),
            child: CustomActivityWidget(
              activityCardModelObject: model.activityCardList[index],
            ),
          );
        },
      ),
      // child: ListView.builder(
      //   shrinkWrap: true,
      //   controller: ScrollController(),
      //   dragStartBehavior: DragStartBehavior.start,
      //   scrollDirection: Axis.horizontal,
      //   physics: AlwaysScrollableScrollPhysics(),
      //   itemCount: model.activityCardList.length,
      //   itemBuilder: (BuildContext context, int index) {
      //     return CustomActivityWidget(
      //         activityCardModelObject: model.activityCardList[index]);
      //   },
      // ),
    );
  }
}

///
///     header
///
class CustomHeaderWidget extends StatelessWidget {
  const CustomHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      child: TextFormField(
        decoration: authFieldDecoration.copyWith(
          prefixIcon: Icon(Icons.search, size: 20),
        ),
      ),
    );
  }
}

///
///   custom health card
///
class CustomActivityWidget extends StatelessWidget {
  final ActivityCardModel activityCardModelObject;
  const CustomActivityWidget({
    super.key,
    required this.activityCardModelObject,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: activityCardModelObject.color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '${activityCardModelObject.title}',
            style: style16B.copyWith(color: blackColor),
          ),
          10.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                '${activityCardModelObject.count}',
                style: style16B.copyWith(color: blackColor),
              ),
              Row(
                children: [
                  Text(
                    '${activityCardModelObject.variation}',
                    style: style16B.copyWith(color: blackColor),
                  ),
                  Icon(
                    activityCardModelObject.icon,
                    size: 15,
                    color: blackColor,
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
