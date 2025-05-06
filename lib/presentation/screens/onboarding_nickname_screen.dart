import 'package:beasavor/common/utils/app_color.dart';
import 'package:beasavor/common/utils/app_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnboardingNicknameScreen extends StatefulWidget {
  const OnboardingNicknameScreen({super.key});

  @override
  State<OnboardingNicknameScreen> createState() =>
      _OnboardingNicknameScreenState();
}

class _OnboardingNicknameScreenState extends State<OnboardingNicknameScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
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
                widthFactor: 0.33,
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
                      '사용할 닉네임을\n설정해주세요',
                      style: TextStyle(
                        fontFamily: 'PretendardSemiBold',
                        color: AppColors.black,
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(height: 38),
                    // 닉네임 입력창
                    TextField(
                      cursorColor: AppColors.gray70,
                      decoration: InputDecoration(
                        hintText: '',
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(color: AppColors.gray10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                              const BorderSide(color: AppColors.blue100),
                        ),
                      ),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      '2-10자, 한글/영문/숫자 입력 가능',
                      style: TextStyle(
                        fontFamily: 'PretendardRegular',
                        color: AppColors.gray40,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // 다음 버튼
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: OutlinedButton(
                onPressed: () {
                  context.go('/onboarding_face');
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
      ),
    );
  }
}
