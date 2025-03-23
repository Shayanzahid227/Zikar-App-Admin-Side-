import 'package:code_structure/ui/reponsive_layout.dart';
import 'package:code_structure/ui/screens/pages/community/private_group_screen.dart';
import 'package:code_structure/ui/screens/pages/community/public_group.dart';
import 'package:code_structure/ui/screens/dashbored/analytics/analytics_screen.dart';
import 'package:code_structure/ui/screens/dashbored/e_commerce/e_commerce_screen.dart';
import 'package:code_structure/ui/screens/side_menu/side_menu_screen.dart';
import 'package:code_structure/ui/screens/side_menu/side_menu_view_model.dart';
import 'package:code_structure/ui/screens/dashbored/zikar_reports/zikar_report_screen.dart';
import 'package:code_structure/ui/screens/pages/e_commerce.dart/customer_screen.dart';
import 'package:code_structure/ui/screens/pages/e_commerce.dart/order_screen.dart';
import 'package:code_structure/ui/screens/pages/e_commerce.dart/product_screen.dart';
import 'package:code_structure/ui/screens/pages/user/all_users.dart';
import 'package:code_structure/ui/screens/pages/user/free_user.dart';
import 'package:code_structure/ui/screens/pages/user/paid_users.dart';
import 'package:code_structure/ui/screens/pages/user/suspended_users.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DashBoardViewModel(),
      child: Consumer<DashBoardViewModel>(
        builder: (context, model, child) {
          return Scaffold(
            body: ResponsiveLayout(
              mobileBody: Scaffold(
                body: Row(
                  children: [
                    const Expanded(flex: 8, child: SideMenuScreen()),
                    Expanded(flex: 9, child: _buildContent(model)),
                  ],
                ),
              ),
              tabletBody: Row(
                children: [
                  const Expanded(flex: 3, child: SideMenuScreen()),
                  Expanded(flex: 8, child: _buildContent(model)),
                ],
              ),
              desktopBody: Row(
                children: [
                  const Expanded(flex: 3, child: SideMenuScreen()),
                  Expanded(flex: 13, child: _buildContent(model)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildContent(DashBoardViewModel model) {
    // Handle child selection first
    if (model.selectedChild != -1) {
      switch (model.selectedParent) {
        case 3: // Users
          switch (model.selectedChild) {
            case 0:
              return AllUsersScreen();
            case 1:
              return SuspendedUsersScreen();
            case 2:
              return FreeUsersScreen();
            case 3:
              return PaidUsersScreen();
          }
          break;
        case 4: // E-commerce
          switch (model.selectedChild) {
            case 0:
              return OrdersScreen();
            case 1:
              return ProductsScreen();
            case 2:
              return CustomersScreen();
          }
          break;
        case 5: // Community
          switch (model.selectedChild) {
            case 0:
              return PrivateGroupScreen();
            case 1:
              return PublicGroupScreen();
          }
          break;
      }
    }

    // Handle parent selection
    switch (model.selectedParent) {
      case 0:
        return AnalyticsScreen();
      case 1:
        return ZikarReportScreen();
      case 2:
        return ECommerceScreen();
      // case 3:
      //   return UsersScreen();
      // case 4: return ECommerceParentScreen();
      // case 5: return CommunityParentScreen();
      // Add other parent cases as needed
      default:
        return AnalyticsScreen();
    }
  }
}
