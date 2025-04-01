import 'package:flutter/material.dart';
import 'package:beasavor/common/utils/app_color.dart';
import 'package:beasavor/common/utils/app_fonts.dart';

class CalendarDateScreen extends StatelessWidget {
  const CalendarDateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue10,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container( //캘린더자리
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
                        'date',//required
                        style: AppFonts.bold
                            .copyWith(fontSize: 40, color: AppColors.black),
                      ),
                      Text(
                        'day',//required
                        style: AppFonts.bold
                            .copyWith(fontSize: 16, color: AppColors.black),
                      ),
                    ],
                  ),
                  Text(
                    'month',//required
                    style: AppFonts.bold
                        .copyWith(fontSize: 24, color: AppColors.gray70),
                  ),
                  SizedBox(
                    width: 24,
                  )
                ],
              ),
            ),
            SizedBox(height: 28,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.bathtub_outlined,
                      size: 20,
                      color: AppColors.gray70,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      '나의 샤워시간',
                      style: AppFonts.semibold
                          .copyWith(fontSize: 16, color: AppColors.gray70),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '18',//required
                      style: AppFonts.bold
                          .copyWith(fontSize: 20, color: AppColors.gray70),
                    ),
                    SizedBox(width: 4,),
                    Text(
                      'min',
                      style: AppFonts.medium
                          .copyWith(fontSize: 16, color: AppColors.gray70),
                    ),
                    SizedBox(width: 4,),
                    Text(
                      '11',//required
                      style: AppFonts.bold
                          .copyWith(fontSize: 20, color: AppColors.gray70),
                    ),
                    SizedBox(width: 4,),
                    Text(
                      'sec',
                      style: AppFonts.medium
                          .copyWith(fontSize: 16, color: AppColors.gray70),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 12,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.timer_outlined,
                      size: 24,
                      color: AppColors.gray70,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      '목표 샤워시간',
                      style: AppFonts.semibold
                          .copyWith(fontSize: 16, color: AppColors.gray70),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '20', //required
                      style: AppFonts.bold
                          .copyWith(fontSize: 20, color: AppColors.gray70),
                    ),
                    SizedBox(width: 4,),
                    Text(
                      'min',
                      style: AppFonts.medium
                          .copyWith(fontSize: 16, color: AppColors.gray70),
                    ),
                    SizedBox(width: 4,),
                    Text(
                      '00',//required
                      style: AppFonts.bold
                          .copyWith(fontSize: 20, color: AppColors.gray70),
                    ),
                    SizedBox(width: 4,),
                    Text(
                      'sec',
                      style: AppFonts.medium
                          .copyWith(fontSize: 16, color: AppColors.gray70),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
