import 'package:code_structure/custom_widgets/zikar/custom_header.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:code_structure/core/constants/app_asset.dart';
import 'package:code_structure/core/constants/colors.dart';
import 'package:code_structure/core/constants/text_style.dart';
import 'package:code_structure/ui/screens/side_menu/side_menu_view_model.dart';

class SideMenuScreen extends StatelessWidget {
  const SideMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<DashBoardViewModel>(
      builder: (context, model, child) {
        return Scaffold(
          backgroundColor: backgroundColor,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header section
                  _buildHeader(),

                  // Menu items for Analytics, Zikar Reports, eCommerce, etc.
                  _buildMenuItem(
                    model,
                    0,
                    AppAssets().analyticsIcon,
                    'Analytics',
                  ),
                  _buildMenuItem(
                    model,
                    1,
                    AppAssets().zikarReportsIcon,
                    'Zikar Reports',
                  ),
                  _buildMenuItem(
                    model,
                    2,
                    AppAssets().eCommerceIcon,
                    'eCommerce',
                  ),

                  // Multiple Pages section
                  _buildSectionTitle('Pages'),
                  _buildMenuItems(model, 3, AppAssets().user, 'Users', [
                    'All Users',
                    'Suspended Users',
                    'Free Users',
                    'Paid Users',
                  ]),
                  _buildMenuItems(model, 4, AppAssets().user, 'E-commerce', [
                    'Orders',
                    'Products',
                    'Customers',
                  ]),
                  _buildMenuItems(model, 5, AppAssets().user, 'Community', [
                    'Private Group',
                    'Public Group',
                  ]),

                  // Single Pages section
                  _buildMenuItem(model, 6, AppAssets().azkar, 'Azkar'),
                  _buildMenuItem(model, 7, AppAssets().request, 'Requests'),
                  _buildMenuItem(
                    model,
                    8,
                    AppAssets().annnouncement,
                    'Announcements',
                  ),
                  _buildMenuItem(model, 9, AppAssets().subDomain, 'Sub-Admins'),
                  _buildMenuItem(model, 10, AppAssets().feedBack, 'Feedbacks'),
                  _buildMenuItem(
                    model,
                    11,
                    AppAssets().subscription,
                    'Subscription',
                  ),
                  _buildMenuItem(model, 12, AppAssets().message, 'Messages'),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildHeader() {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          height: 200.h,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppAssets().sideMenu),
              fit: BoxFit.contain,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Text('Dashboard', style: style14.copyWith(color: greyColor)),
        ),
      ],
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Text(title, style: style14.copyWith(color: greyColor)),
    );
  }

  Widget _buildMenuItem(
    DashBoardViewModel model,
    int parentIndex,
    String iconPath,
    String title,
  ) {
    bool isSelected =
        model.selectedParent == parentIndex && model.selectedChild == -1;
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: isSelected ? dashboardContainerColor : transparentColor,
      ),
      child: ListTile(
        onTap: () => model.selectParent(parentIndex),
        leading: Image.asset(
          iconPath,
          scale: 4,
          color: isSelected ? primaryColor : blackColor,
        ),
        title: Text(
          title,
          style: style14.copyWith(color: isSelected ? primaryColor : greyColor),
        ),
      ),
    );
  }

  Widget _buildMenuItems(
    DashBoardViewModel model,
    int parentIndex,
    String iconPath,
    String title,
    List<String> subItems,
  ) {
    bool isParentSelected = model.selectedParent == parentIndex;
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color:
                isParentSelected ? dashboardContainerColor : transparentColor,
          ),
          child: GestureDetector(
            onTap: () => model.toggleExpansion(parentIndex),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Row(
                children: [
                  Image.asset(
                    iconPath,
                    scale: 4,
                    color: isParentSelected ? primaryColor : blackColor,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      title,
                      style: style14.copyWith(
                        color: isParentSelected ? primaryColor : greyColor,
                      ),
                    ),
                  ),
                  Icon(
                    model.isParentExpanded(parentIndex)
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                    color: isParentSelected ? primaryColor : blackColor,
                  ),
                ],
              ),
            ),
          ),
        ),
        if (model.isParentExpanded(parentIndex))
          Column(
            children:
                subItems.asMap().entries.map((entry) {
                  int childIndex = entry.key;
                  String subItem = entry.value;
                  bool isChildSelected = model.isChildSelected(
                    parentIndex,
                    childIndex,
                  );
                  return ListTile(
                    contentPadding: EdgeInsets.only(left: 30),
                    title: Text(
                      subItem,
                      style: style14.copyWith(
                        color: isChildSelected ? primaryColor : greyColor,
                      ),
                    ),
                    onTap: () => model.selectChild(parentIndex, childIndex),
                  );
                }).toList(),
          ),
      ],
    );
  }
}

///
///    divider
///
Widget _divider() {
  return Divider(color: Colors.grey.shade200);
}
