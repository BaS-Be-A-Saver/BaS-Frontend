import 'package:beasavor/common/utils/app_color.dart';
import 'package:beasavor/common/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class ClosetItemWidget extends StatelessWidget {
  final String name;
  final String photo;

  const ClosetItemWidget({super.key, required this.name, required this.photo});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 76,
      height: 130,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 76,
            height: 99,
            decoration: BoxDecoration(
              color: AppColors.white,
              border: Border.all(color: AppColors.gray10),
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  photo,
                  fit: BoxFit.contain,
                )),
          ),
          Text(
            name,
            style: AppFonts.semibold
                .copyWith(color: AppColors.black, fontSize: 12),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
