import 'package:flutter/material.dart';
import 'package:beasavor/common/utils/app_color.dart';
import 'package:beasavor/common/utils/app_fonts.dart';
import 'package:beasavor/common/utils/app_icon.dart';
import 'package:beasavor/common/utils/app_image.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyPageScreen extends StatelessWidget {
  const MyPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.blue10,
        foregroundColor: AppColors.gray70,
        leadingWidth: 80,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20), //로고와 왼쪽 화면 사이 간격 띄우기 위함
          child: Image.asset(
            AppImages.logo,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: SvgPicture.asset(
              AppIcons.settings,
              width: 24,
              height: 24,
              color: AppColors.blue100,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 402,
              height: 260,
              color: AppColors.blue10,
              child: Column(
                children: [
                  Center(
                    child: Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: AppColors.white),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          '초롱이',
                          style: AppFonts.bold
                              .copyWith(fontSize: 20, color: AppColors.black),
                        ),
                      ),
                      SizedBox(width: 3,),
                      Icon(
                        Icons.edit,
                        color: AppColors.gray40,
                        size: 20,
                      )
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 164,
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.blue100,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(12),
                            color: AppColors.white),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.checkroom,
                              color: AppColors.blue100,
                            ),
                            SizedBox(width: 5,),
                            Text(
                              '옷 갈아입기',
                              style: AppFonts.regular.copyWith(
                                  color: AppColors.blue100, fontSize: 13),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: 164,
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.blue100,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(12),
                            color: AppColors.blue100),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.calendar_month_outlined,
                              color: AppColors.white,
                            ),
                            Text(
                              '캘린더 보기',
                              style: AppFonts.regular.copyWith(
                                  color: AppColors.white, fontSize: 13),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: 402,
              height: 100,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '04',
                        style: AppFonts.bold
                            .copyWith(fontSize: 40, color: AppColors.black),
                      ),
                      Text(
                        'TUE',
                        style: AppFonts.bold
                            .copyWith(fontSize: 16, color: AppColors.black),
                      ),
                    ],
                  ),
                  Text(
                    'Feburary',
                    style: AppFonts.bold
                        .copyWith(fontSize: 24, color: AppColors.gray70),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.error,
                        size: 60,
                        color: AppColors.yellow100,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: 402,
              height: 320,
              color: AppColors.yellow10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'STILL\nSHOWERLESS?',
                        style: AppFonts.special.copyWith(
                            fontSize: 36,
                            color: AppColors.yellow100,
                            height: 1.0),
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 232,
                        height: 32,
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: AppColors.white),
                        child: Text(
                          '오늘은 아직 샤워를 하지 않았어요!',
                          style: AppFonts.regular
                              .copyWith(fontSize: 15, color: AppColors.gray50),
                        ),
                      ),
                      Container(
                        width: 250,
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '목표 시간',
                              style: AppFonts.semibold.copyWith(
                                  fontSize: 16, color: AppColors.gray70),
                            ),
                            SizedBox(width: 6,),
                            Icon(
                              Icons.edit,
                              size: 16,
                              color: AppColors.gray40,
                            ),
                            SizedBox(width: 20,),
                            Text(
                              '20 min 00 sec',
                              style: AppFonts.semibold.copyWith(
                                  fontSize: 16, color: AppColors.gray70),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
