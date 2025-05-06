import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../presentation/screens/home_screen.dart';
import '../presentation/screens/landing_screen.dart';
import '../presentation/screens/onboarding_face_screen.dart';
import '../presentation/screens/onboarding_nickname_screen.dart';
import '../presentation/screens/onboarding_timeset_screen.dart';
import '../presentation/screens/splash_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LandingScreen(),
    ),
    GoRoute(
      path: '/splash',
      builder: (context, state) => SplashScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/onboarding_nickname',
      builder: (context, state) => const OnboardingNicknameScreen(),
    ),
    GoRoute(
      path: '/onboarding_face',
      builder: (context, state) => const OnboardingFaceScreen(),
    ),
    GoRoute(
      path: '/onboarding_timeset',
      builder: (context, state) => const OnboardingTimesetScreen(),
    ),
  ],
);
