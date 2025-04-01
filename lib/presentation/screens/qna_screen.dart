import 'package:flutter/material.dart';
import 'package:beasavor/common/utils/app_color.dart';
import 'package:beasavor/common/utils/app_fonts.dart';
import 'package:beasavor/common/utils/app_icon.dart';
import 'package:beasavor/common/utils/app_image.dart';
import 'package:flutter_svg/flutter_svg.dart';

class QnAScreen extends StatelessWidget {
  const QnAScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue10,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.blue50,
        title: Text('문의하기'),
        titleTextStyle: AppFonts.bold.copyWith(fontSize: 17),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
      ),
    );
  }
}
