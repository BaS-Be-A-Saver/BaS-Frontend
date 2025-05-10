import 'package:beasavor/common/utils/app_color.dart';
import 'package:beasavor/data/models/boothmember_model.dart';
import 'package:beasavor/presentation/widgets/showMember_dialog.dart';
import 'package:flutter/material.dart';

class BoothmemberWidget extends StatelessWidget {
  const BoothmemberWidget({
    super.key,
    required this.member,
  });

  final BoothMemberModel member;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showMemberDialog(context, member);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            member.image,
            width: 80,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.gray70),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              member.name,
              style: const TextStyle(
                fontSize: 12,
                fontFamily: 'PretendardRegular',
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            member.time,
            style: TextStyle(
              fontSize: 12,
              color: member.isSuccess ? AppColors.blue100 : AppColors.red100,
              fontFamily: 'PretendardSemibold',
            ),
          ),
        ],
      ),
    );
  }
}
