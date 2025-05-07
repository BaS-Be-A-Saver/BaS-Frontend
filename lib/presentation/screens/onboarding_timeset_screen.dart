import 'package:beasavor/common/utils/app_color.dart';
import 'package:beasavor/common/utils/app_fonts.dart';
import 'package:beasavor/common/utils/app_image.dart';
import 'package:beasavor/logic/timeset_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
    final TimeSetController controller = Get.find();

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
                  SizedBox(height: 69),

                  // 샤워시간 설정
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Obx(() => DropdownButton<int>(
                              // 분 선택 드롭다운
                              value: controller.selectedMinute.value,
                              items: List.generate(31, (index) {
                                return DropdownMenuItem(
                                    value: index,
                                    child: index >= 10
                                        ? Text(
                                            "$index min",
                                            style: AppFonts.medium.copyWith(
                                                color: AppColors.black,
                                                fontSize: 16),
                                          )
                                        : Text(
                                            "0$index min",
                                            style: AppFonts.medium.copyWith(
                                                color: AppColors.black,
                                                fontSize: 16),
                                          ));
                              }),
                              onChanged: (value) {
                                if (value != null) {
                                  controller.updateMinute(value);
                                }
                              },
                            )),
                        SizedBox(
                          width: 12,
                        ),
                        Obx(() => DropdownButton<int>(
                              // 초 선택 드롭다운
                              value: controller.selectedSecond.value,
                              items: List.generate(60, (index) {
                                return DropdownMenuItem(
                                    value: index,
                                    child: index >= 10
                                        ? Text(
                                            "$index sec",
                                            style: AppFonts.medium.copyWith(
                                                color: AppColors.black,
                                                fontSize: 16),
                                          )
                                        : Text(
                                            "0$index sec",
                                            style: AppFonts.medium.copyWith(
                                                color: AppColors.black,
                                                fontSize: 16),
                                          ));
                              }),
                              onChanged: (value) {
                                if (value != null) {
                                  controller.updateSecond(value);
                                }
                              },
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          // 시작하기 버튼
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: ElevatedButton(
              onPressed: () {
                final int minute = controller.selectedMinute.value;
                final int second = controller.selectedSecond.value;
                final String timeString =
                    "${minute.toString().padLeft(2, '0')}분 ${second.toString().padLeft(2, '0')}초";
                print("설정된 샤워 시간: $timeString");
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
