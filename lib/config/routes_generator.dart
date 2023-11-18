import 'package:flutter/material.dart';
import 'package:skeleton_app/features/home/home_page.dart';
import 'package:skeleton_app/features/splash/splash_page.dart';

class RouteGenerator {
  const RouteGenerator._();

  static const kTitle = 'Skeleton App';

  static const kSplashScreen = 'splash_screen';
  static const kLoginScreen = 'login_screen';
  static const kHomeScreen = 'home_screen';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case kSplashScreen:
        return MaterialPageRoute(
          builder: (context) => const SplashPage(),
        );
      case kHomeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );

      default:
        throw UnimplementedError('Route not found');
    }
  }
}
