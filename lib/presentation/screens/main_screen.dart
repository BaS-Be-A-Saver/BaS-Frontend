import 'package:beasavor/common/utils/app_fonts.dart';
import 'package:beasavor/common/utils/app_image.dart';
import 'package:beasavor/presentation/screens/alarm_screen.dart';
import 'package:beasavor/presentation/screens/mypage_screen_n.dart';
import 'package:beasavor/presentation/screens/shower_screen.dart';
import 'package:beasavor/presentation/screens/water_screen.dart';
import 'package:flutter/material.dart';
import 'package:beasavor/common/utils/app_color.dart';
import 'package:get/get.dart';
import 'package:beasavor/logic/navigation_controller.dart';
import 'package:beasavor/presentation/screens/home_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.blue10,
        foregroundColor: AppColors.blue50,
        leadingWidth: 80,
        actionsIconTheme: IconThemeData(color: AppColors.blue50),
        leading: Padding(
          padding: EdgeInsets.only(left: 20),
          child: Image.asset(AppImages.logo),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: GestureDetector(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const AlarmScreen())),
              child: Icon(
                Icons.notifications,
                size: 30,
              ),
            ),
          ),
        ],
      ),
      body: Obx(() {
        return IndexedStack(
          index: NavigatorController.to.currentIndex.value,
          children: [ShowerScreen(), HomeScreen(), MyPageScreen()],
        );
      }),
      bottomNavigationBar: 
      Obx(() => ClipRRect(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60)),
        child: BottomNavigationBar(
          backgroundColor: AppColors.blue20,
          selectedItemColor: AppColors.blue100,
          unselectedItemColor: AppColors.gray40,
          selectedLabelStyle: AppFonts.medium.copyWith(fontSize: 9),
          unselectedLabelStyle: AppFonts.medium.copyWith(fontSize: 9),
                currentIndex: NavigatorController.to.currentIndex.value,
                onTap: (index) => NavigatorController.to.tapIndex(index),
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.shower_outlined), label: '샤워부스',),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home_outlined), label: 'home'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person_outline), label: 'My')
                ]),
      )),

    );
  }
}
