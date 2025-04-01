import 'package:beasavor/logic/nickname_controller.dart';
import 'package:beasavor/logic/timeset_controller.dart';
import 'package:beasavor/presentation/screens/main_screen.dart';
import 'package:beasavor/presentation/screens/store_screen.dart';
import 'package:beasavor/presentation/screens/account_screen.dart';
import 'package:beasavor/presentation/screens/alarm_screen.dart';
import 'package:beasavor/presentation/screens/calendar_date_screen.dart';
import 'package:beasavor/presentation/screens/calendar_screen.dart';
import 'package:beasavor/presentation/screens/closet_screen.dart';
import 'package:beasavor/presentation/screens/home_screen.dart';
import 'package:beasavor/presentation/screens/mypage_screen_f.dart';
import 'package:beasavor/presentation/screens/mypage_screen_n.dart';
import 'package:beasavor/presentation/screens/mypage_screen_s.dart';
import 'package:beasavor/presentation/screens/setting_screen.dart';
import 'package:beasavor/presentation/screens/shower_screen.dart';
import 'package:beasavor/presentation/screens/water_screen.dart';
import 'package:beasavor/common/utils/app_color.dart';
import 'package:beasavor/presentation/stopwatch/stopwatch_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:beasavor/logic/navigation_controller.dart';

void main() {
  Get.put(NavigatorController());
  Get.put(NicknameController());
  Get.put(TimeSetController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BaS',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.white,
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}
