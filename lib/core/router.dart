import 'package:beasavor/presentation/screens/booth_detail_screen.dart';
import 'package:beasavor/presentation/screens/main_screen.dart';
import 'package:beasavor/presentation/screens/showerbooth_screen.dart';
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
    ShellRoute(
        builder: (context, state, child) {
          return MainScreen();
        },
        routes: [
          GoRoute(
            path: '/showerbooth',
            builder: (context, state) => const ShowerboothScreen(),
          ),
          GoRoute(
            path: '/home',
            builder: (context, state) => const HomeScreen(),
          ),
        ]),
    GoRoute(
      path: '/',
      builder: (context, state) => const LandingScreen(),
    ),
    GoRoute(
      path: '/splash',
      builder: (context, state) => SplashScreen(),
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
    GoRoute(
        path: '/showerbooth_detail',
        builder: (context, state) {
          final name = state.uri.queryParameters['name'] ?? 'Unknown';
          return BoothDetailScreen(name: name);
        })
  ],
);
