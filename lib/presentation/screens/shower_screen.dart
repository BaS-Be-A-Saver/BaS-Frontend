import 'package:beasavor/common/utils/app_fonts.dart';
import 'package:beasavor/common/utils/app_color.dart';
import 'package:flutter/material.dart';

class ShowerScreen extends StatelessWidget {
  const ShowerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'ShowerBooth',
          style: AppFonts.bold.copyWith(color: AppColors.blue100, fontSize:60)
        ),
      ),
    );
  }
}