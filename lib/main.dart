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

void main() {
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
      home: const ClosetScreen(),
    );
  }
}
