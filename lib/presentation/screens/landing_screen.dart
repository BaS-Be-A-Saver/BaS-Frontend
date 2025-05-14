import 'package:beasavor/common/utils/app_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  LandingScreenState createState() => LandingScreenState();
}

class LandingScreenState extends State<LandingScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        context.go('/splash'); // 스플래시 화면으로 이동
      }
    });
  }

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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppImages.appIcon,
                width: 120,
                height: 120,
              ),
              const SizedBox(height: 11),
              const Text(
                "Be A Saver",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'PretendardLight',
                  color: Color(0xFF007591),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
