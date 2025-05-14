import 'package:beasavor/common/utils/app_color.dart';
import 'package:beasavor/common/utils/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ShowerboothWidget extends StatelessWidget {
  final String boothdoor;
  final String name;

  const ShowerboothWidget(
      {super.key, required this.boothdoor, required this.name});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push('/showerbooth_detail?name=$name');
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            boothdoor,
            fit: BoxFit.contain,
          ),
          SizedBox(height: 7),
          Text(
            name,
            style:
                AppFonts.medium.copyWith(color: AppColors.gray70, fontSize: 14),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
