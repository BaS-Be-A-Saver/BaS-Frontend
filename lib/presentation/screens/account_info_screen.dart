import 'package:flutter/material.dart';
import 'package:beasavor/common/utils/app_color.dart';
import 'package:beasavor/common/utils/app_fonts.dart';
import 'package:beasavor/common/utils/app_icon.dart';
import 'package:beasavor/common/utils/app_image.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AccountInfoScreen extends StatelessWidget {
  const AccountInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue10,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.blue50,
        title: Text('계정 정보'),
        titleTextStyle: AppFonts.bold.copyWith(fontSize: 17),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
      ),
    );
  }
}
