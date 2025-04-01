import 'package:flutter/material.dart';
import 'package:beasavor/common/utils/app_color.dart';
import 'package:beasavor/common/utils/app_fonts.dart';

class ShowerAverageInfo extends StatelessWidget {
  final String title;
  final String time;

  const ShowerAverageInfo({
    super.key,
    required this.title,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 80,
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border(bottom: BorderSide(color: AppColors.gray10)),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: AppFonts.bold.copyWith(fontSize: 20, color: AppColors.blue100),
                  ),
                  Text(
                    '샤워시간',
                    style: AppFonts.bold.copyWith(fontSize: 16, color: AppColors.gray50),
                  )
                ],
              ),
            ),
            Container(
              width: 120,
              child: Text(
                time,
                style: AppFonts.bold.copyWith(fontSize: 32, color: AppColors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
