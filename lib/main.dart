import 'package:code_structure/ui/screens/analytics/analytics_screen.dart';
import 'package:code_structure/ui/screens/dash_board/dash_board_side.dart';
import 'package:code_structure/ui/screens/main_screen/main_screen.dart';
import 'package:code_structure/ui/screens/rough/1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          ),
          home: MainScreen()),
    );
  }
}
