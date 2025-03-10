import 'package:flutter/material.dart';
import 'package:beasavor/common/utils/app_color.dart';
import 'package:beasavor/common/utils/app_fonts.dart';
import 'package:beasavor/common/utils/app_icon.dart';
import 'package:beasavor/common/utils/app_image.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue10,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        leading: Icon(
          Icons.arrow_back_ios,
          color: AppColors.gray70,
        ),
        title: Text('계정 정보'),
        titleTextStyle: AppFonts.bold.copyWith(fontSize: 17),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 256,
                width: 402,
                decoration: BoxDecoration(color: AppColors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: AppColors.gray50)),
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '닉네임',
                              style: AppFonts.bold.copyWith(fontSize: 20),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Icon(
                              Icons.edit,
                              color: AppColors.gray40,
                              size: 20,
                            ),
                          ],
                        ),
                        Text(
                          'email@email.com',
                          style: AppFonts.light
                              .copyWith(color: AppColors.gray40, fontSize: 16),
                        ),
                      ],
                    )
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              width: 402,
              decoration: BoxDecoration(color: AppColors.white),
              child: Padding(
                padding: EdgeInsets.only(left: 28, right: 26),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '로그아웃',
                      style: AppFonts.regular
                          .copyWith(color: AppColors.gray70, fontSize: 16),
                    ),
                    Icon(Icons.chevron_right, color: AppColors.gray50, size: 24)
                  ],
                ),
              ),
            ),
            Container(
              height: 60,
              width: 402,
              decoration: BoxDecoration(color: AppColors.white),
              child: Padding(
                padding: EdgeInsets.only(left: 28, right: 26),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '계정탈퇴',
                      style: AppFonts.regular
                          .copyWith(color: AppColors.gray70, fontSize: 16),
                    ),
                    Icon(Icons.chevron_right, color: AppColors.gray50, size: 24)
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
