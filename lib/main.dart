import 'package:flutter/material.dart';
import 'package:spare_boy/core/theme/app_theme.dart';
import 'package:spare_boy/features/authentication/views/onboarding_screen.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const OnboardingScreen(),
    );
  }
}
