import 'package:beasavor/common/utils/app_color.dart';
import 'package:beasavor/common/utils/app_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnboardingTimesetScreen extends StatefulWidget {
  const OnboardingTimesetScreen({super.key});

  @override
  State<OnboardingTimesetScreen> createState() =>
      _OnboardingTimesetScreenState();
}

class _OnboardingTimesetScreenState extends State<OnboardingTimesetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 107),
          // progress bar
          Container(
            height: 4,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.gray10,
            ),
            child: FractionallySizedBox(
              alignment: Alignment.centerLeft,
              widthFactor: 1,
              child: Container(
                color: AppColors.blue100,
              ),
            ),
          ),
          const SizedBox(height: 47),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // logo
                  Image.asset(
                    AppImages.logolight,
                    width: 85,
                  ),
                  const SizedBox(height: 16),
                  // 제목
                  const Text(
                    '목표 샤워 시간을\n설정해주세요',
                    style: TextStyle(
                      fontFamily: 'PretendardSemiBold',
                      color: AppColors.black,
                      fontSize: 24,
                    ),
                  ),

                  // 샤워시간 설정
                ],
              ),
            ),
          ),
          // 다음 버튼
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: ElevatedButton(
              onPressed: () {
                context.go('/home');
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 48),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                backgroundColor: AppColors.blue100,
                elevation: 0,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    AppImages.logoWhite,
                    width: 29,
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    '시작하기',
                    style: TextStyle(
                      fontFamily: 'PretendardBold',
                      color: AppColors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 53),
        ],
      ),
    );
  }
}
