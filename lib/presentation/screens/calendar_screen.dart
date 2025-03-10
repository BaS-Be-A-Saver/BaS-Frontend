import 'package:flutter/material.dart';
import 'package:beasavor/common/utils/app_color.dart';
import 'package:beasavor/common/utils/app_fonts.dart';
import 'package:beasavor/common/utils/app_image.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        leadingWidth: 80,
        leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Image.asset(AppImages.logo)),
        title: Text(
          '캘린더',
          style: AppFonts.bold.copyWith(fontSize: 17),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 402,
              height: 360,
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(32),
                      bottomRight: Radius.circular(32)),
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.gray50,
                        spreadRadius: 0,
                        blurRadius: 0.5)
                  ]),
            ),
            SizedBox(height: 1),
            Container(
              width: 360,
              height: 100,
              decoration: BoxDecoration(
                  color: AppColors.white,
                  border: Border(bottom: BorderSide(color: AppColors.gray10))),
              child: Padding(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '3월 평균',
                          style: AppFonts.bold
                              .copyWith(fontSize: 20, color: AppColors.blue100),
                        ),
                        Text(
                          '샤워시간',
                          style: AppFonts.bold
                              .copyWith(fontSize: 16, color: AppColors.gray50),
                        )
                      ],
                    ),
                    Text(
                      '15 : 01',
                      style: AppFonts.bold
                          .copyWith(fontSize: 32, color: AppColors.black),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 360,
              height: 100,
              decoration: BoxDecoration(
                  color: AppColors.white,
                  border: Border(bottom: BorderSide(color: AppColors.gray10))),
              child: Padding(
                padding: EdgeInsets.only(left: 28, right: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '이번주 평균',
                          style: AppFonts.bold
                              .copyWith(fontSize: 20, color: AppColors.blue100),
                        ),
                        Text(
                          '샤워시간',
                          style: AppFonts.bold
                              .copyWith(fontSize: 16, color: AppColors.gray50),
                        )
                      ],
                    ),
                    Text(
                      '18 : 32',
                      style: AppFonts.bold
                          .copyWith(fontSize: 32, color: AppColors.black),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 360,
              height: 100,
              decoration: BoxDecoration(
                color: AppColors.white,
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '3일 평균',
                          style: AppFonts.bold
                              .copyWith(fontSize: 20, color: AppColors.blue100),
                        ),
                        Text(
                          '샤워시간',
                          style: AppFonts.bold
                              .copyWith(fontSize: 16, color: AppColors.gray50),
                        )
                      ],
                    ),
                    Text(
                      '28 : 11',
                      style: AppFonts.bold
                          .copyWith(fontSize: 32, color: AppColors.black),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
