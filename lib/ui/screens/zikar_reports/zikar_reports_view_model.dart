import 'package:code_structure/core/constants/app_asset.dart';
import 'package:code_structure/core/model/dashboard_heder_model.dart';
import 'package:code_structure/core/others/base_view_model.dart';

class ZikarReportsViewModel extends BaseViewModel {
  List<DashBoardHeaderModel> dashboardHeader = [
    DashBoardHeaderModel(
        // iconUrl: AppAssets().dashboardIcon,
        // headingName: 'Dashboard',
        // folderName: 'Analytics',
        // lightIcon: AppAssets().themeIcon,
        // notificationIcon: AppAssets().notificationIcon,
        userImageUrl: AppAssets().pic,
        userName: 'shayan zahid ')
  ];
}
