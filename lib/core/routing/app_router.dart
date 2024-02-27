import 'package:doc_app/features/onboarding/onBoarding_Screen.dart';
import 'package:flutter/material.dart';
import 'routes.dart';

class AppRouter {
  Route generateroutes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoarding(),
        );
      case Routes.loginscreen:
        return MaterialPageRoute(
          builder: (_) => const Placeholder(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Text("No route Defined For $settings.name"),
          ),
        );
    }
  }
}
