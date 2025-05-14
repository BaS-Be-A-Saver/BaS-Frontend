import 'package:beasavor/common/utils/app_color.dart';
import 'package:beasavor/common/utils/app_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> pageData = [
    {
      "title": "BaS",
      "desc": "당신의 샤워 시간을 줄일 수 있는 가장 즐거운\n동기부여 커뮤니티",
      "image": "asset/image/splash1.png"
    },
    {
      "title": "목표 샤워 시간을 달성하고\n물방울을 모아보세요.",
      "desc": "모은 물방울로 나의 모습을 꾸미고, 친구들에게\n자랑해보세요.",
      "image": "asset/image/splash2.png"
    },
    {
      "title": "친구들과\n샤워부스에서 함께 해보세요.",
      "desc":
          "샤워부스 속 친구들과 누가누가 목표 시간을\n잘 지키는지 경쟁하며 물 절약을 실천해보세요.\n샤워하지 않으면 더러워지니 조심하세요!",
      "image": "asset/image/splash3.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.landingBackground),
            fit: BoxFit.cover,
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 70),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Image.asset(
                AppImages.logoFilled,
                width: 85,
              ),
            ),
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: pageData.length,
                onPageChanged: (index) {
                  setState(() => _currentPage = index);
                },
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 30),
                        Text(
                          pageData[index]['title'] ?? '',
                          style: TextStyle(
                            fontFamily: 'PretendardBold',
                            color: AppColors.black,
                            fontSize: 24,
                          ),
                        ),
                        const SizedBox(height: 14),
                        Text(
                          pageData[index]['desc'] ?? '',
                          style: TextStyle(
                            fontFamily: 'PretendardRegular',
                            color: AppColors.gray70,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 46),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 31),
                          child: Image.asset(
                            pageData[index]['image']!,
                            width: 284,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(pageData.length, (dotIndex) {
                return Container(
                  margin: const EdgeInsets.all(4),
                  width: _currentPage == dotIndex ? 20 : 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: _currentPage == dotIndex
                        ? AppColors.blue100
                        : AppColors.gray40,
                    borderRadius: BorderRadius.circular(5),
                  ),
                );
              }),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: ElevatedButton(
                onPressed: () {
                  context.go('/onboarding_nickname');
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
                    const Text(
                      '구글 계정으로 시작하기',
                      style: TextStyle(
                        fontFamily: 'PretendardBold',
                        color: AppColors.white,
                        fontSize: 14,
                      ),
                    ),
                    Icon(
                      Icons.chevron_right_sharp,
                      color: AppColors.white,
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
