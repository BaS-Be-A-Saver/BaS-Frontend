import 'package:beasavor/presentation/screens/personal_screen.dart';
import 'package:beasavor/presentation/screens/qna_screen.dart';
import 'package:beasavor/presentation/screens/account_info_screen.dart';
import 'package:beasavor/presentation/screens/service_screen.dart';
import 'package:flutter/material.dart';
import 'package:beasavor/common/utils/app_color.dart';
import 'package:beasavor/common/utils/app_fonts.dart';
import 'package:beasavor/common/utils/app_icon.dart';
import 'package:beasavor/common/utils/app_image.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue10,
      appBar: AppBar(
        foregroundColor: AppColors.blue50,
        backgroundColor: AppColors.white,
        title: Text('설정'),
        titleTextStyle: AppFonts.bold.copyWith(fontSize: 17),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const AccountInfoScreen())
              ),
              child: Container(
                height: 60,
                decoration: BoxDecoration(color: AppColors.white),
                child: Padding(
                  padding: EdgeInsets.only(left: 28, right: 26),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '계정 정보',
                        style: AppFonts.regular
                            .copyWith(color: AppColors.gray70, fontSize: 16),
                      ),
                      Icon(Icons.chevron_right, color: AppColors.gray50, size: 24)
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const QnAScreen())
              ),
              child: Container(
                height: 60,
                decoration: BoxDecoration(color: AppColors.white),
                child: Padding(
                  padding: EdgeInsets.only(left: 28, right: 26),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '문의하기 & 의견 보내기',
                        style: AppFonts.regular
                            .copyWith(color: AppColors.gray70, fontSize: 16),
                      ),
                      Icon(Icons.chevron_right, color: AppColors.gray50, size: 24)
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const PersonalScreen())
              ),
              child: Container(
                height: 60,
                decoration: BoxDecoration(color: AppColors.white),
                child: Padding(
                  padding: EdgeInsets.only(left: 28, right: 26),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '개인정보 처리 방침',
                        style: AppFonts.regular
                            .copyWith(color: AppColors.gray70, fontSize: 16),
                      ),
                      Icon(Icons.chevron_right, color: AppColors.gray50, size: 24)
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const ServiceScreen())
              ),
              child: Container(
                height: 60,
                decoration: BoxDecoration(color: AppColors.white),
                child: Padding(
                  padding: EdgeInsets.only(left: 28, right: 26),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '서비스 이용 약관',
                        style: AppFonts.regular
                            .copyWith(color: AppColors.gray70, fontSize: 16),
                      ),
                      Icon(Icons.chevron_right, color: AppColors.gray50, size: 24)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
