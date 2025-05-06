import 'package:beasavor/common/utils/app_color.dart';
import 'package:beasavor/common/utils/app_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnboardingFaceScreen extends StatefulWidget {
  const OnboardingFaceScreen({super.key});

  @override
  State<OnboardingFaceScreen> createState() => _OnboardingFaceScreenState();
}

class _OnboardingFaceScreenState extends State<OnboardingFaceScreen> {
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
              widthFactor: 0.66,
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
                    '사용할 캐릭터의\n얼굴을 만들어주세요',
                    style: TextStyle(
                      fontFamily: 'PretendardSemiBold',
                      color: AppColors.black,
                      fontSize: 24,
                    ),
                  ),
                  // 설명
                  const Text(
                    '만들고 난 뒤에는 수정이 불가하니 신중하게 선택해주세요',
                    style: TextStyle(
                      fontFamily: 'PretendardRegular',
                      color: AppColors.gray70,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 38),
                  // 얼굴 미리보기
                ],
              ),
            ),
          ),
          // 다음 버튼
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: OutlinedButton(
              onPressed: () {
                context.go('/onboarding_timeset');
              },
              style: OutlinedButton.styleFrom(
                minimumSize: Size(double.infinity, 48),
                side: const BorderSide(
                  color: AppColors.blue100,
                  width: 1.5,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                backgroundColor: AppColors.white,
                elevation: 0,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    '다음',
                    style: TextStyle(
                      fontFamily: 'PretendardBold',
                      color: AppColors.blue100,
                      fontSize: 14,
                    ),
                  ),
                  Icon(
                    Icons.chevron_right_sharp,
                    color: AppColors.blue100,
                    weight: 20,
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
