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
  final TextEditingController _controller = TextEditingController();
  bool _isButtonEnabled = false;

  String _guideText = '2-10자, 한글/영문/숫자 입력 가능';
  Color _guideColor = AppColors.gray40;
  bool _showErrorBorder = false;

  String nickname = '';

  @override
  void initState() {
    super.initState();

    //텍스트가 바뀔 때마다 실행
    _controller.addListener(() {
      setState(() {
        _isButtonEnabled = _controller.text.trim().isNotEmpty;
        if (_isButtonEnabled) {
          _guideText = '2-10자, 한글/영문/숫자 입력 가능';
          _guideColor = AppColors.gray40;
          _showErrorBorder = false;
        }
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
                      controller: _controller,
                      cursorColor: AppColors.gray70,
                      decoration: InputDecoration(
                        hintText: '',
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: _showErrorBorder
                                ? AppColors.red100
                                : AppColors.gray10,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: _showErrorBorder
                                ? AppColors.red100
                                : AppColors.blue100,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 6),
                    //입력필드 가이드 텍스트
                    Text(
                      _guideText,
                      style: TextStyle(
                        fontFamily: 'PretendardRegular',
                        color: _guideColor,
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
                  // 입력된 값이 있는지 확인
                  if (_controller.text.trim().isEmpty) {
                    setState(() {
                      _guideText = '닉네임을 입력해주세요';
                      _guideColor = AppColors.red100;
                      _showErrorBorder = true;
                    });
                    return;
                  }
                  nickname = _controller.text.trim();
                  //print('nickname: $nickname');
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
