import 'package:code_structure/ui/screens/analytics/analytics_screen_view_model.dart';
import 'package:code_structure/ui/screens/main_screen/main_screen.dart';
import 'package:code_structure/ui/screens/zikar_reports/zikar_report_screen.dart';
import 'package:code_structure/ui/screens/zikar_reports/zikar_reports_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => AnalyticsScreenViewModel(),
          ),
          ChangeNotifierProvider(
            create: (context) => ZikarReportsViewModel(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          ),
          home: MainScreen(),
        ),
      ),
    );
  }
}
