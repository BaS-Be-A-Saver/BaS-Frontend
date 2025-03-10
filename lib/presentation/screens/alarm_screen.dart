import 'package:flutter/material.dart';
import 'package:beasavor/common/utils/app_color.dart';
import 'package:beasavor/common/utils/app_fonts.dart';
import 'package:beasavor/common/utils/app_image.dart';

class AlarmScreen extends StatelessWidget {
  const AlarmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.gray70,
        leadingWidth: 80,
          leading: Padding(
            padding: const EdgeInsets.only(left: 20), //로고와 왼쪽 화면 사이 간격 띄우기 위함
            child: Image.asset(
              AppImages.logo,
              ), 
          ),
          title: Text('알림'),
          titleTextStyle: AppFonts.bold.copyWith(fontSize: 17),
          centerTitle: true,
      ),
    );
  }
}