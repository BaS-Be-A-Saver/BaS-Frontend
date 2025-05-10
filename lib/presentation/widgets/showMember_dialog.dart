import 'package:beasavor/common/utils/app_color.dart';
import 'package:beasavor/data/models/boothmember_model.dart';
import 'package:flutter/material.dart';

void showMemberDialog(BuildContext context, BoothMemberModel member) {
  showDialog(
    context: context,
    builder: (_) {
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.close,
                    color: AppColors.gray70,
                    size: 24,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Image.asset(
                member.image,
                width: 110,
              ),
              const SizedBox(height: 11),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.gray70),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  member.name,
                  style: const TextStyle(
                    fontSize: 14,
                    fontFamily: 'PretendardRegular',
                    color: AppColors.gray70,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Divider(
                  color: AppColors.gray10,
                  thickness: 1,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildTimeRow("목표 샤워 시간", "12:22", AppColors.gray70),
                  const SizedBox(height: 10),
                  _buildTimeRow(
                    "오늘 샤워 시간",
                    member.time,
                    member.isSuccess ? AppColors.blue100 : AppColors.red100,
                  ),
                  const SizedBox(height: 10),
                  _buildTimeRow("이번 달 목표 달성", "4회", AppColors.blue100),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}

Widget _buildTimeRow(String title, String value, Color color) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: const TextStyle(
          fontFamily: 'PretendardRegular',
          fontSize: 14,
          color: AppColors.gray50,
        ),
      ),
      Text(
        value,
        style: TextStyle(
          fontFamily: 'PretendardSemibold',
          fontSize: 14,
          color: color,
        ),
      ),
    ],
  );
}
