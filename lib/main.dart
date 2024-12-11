import 'package:flutter/material.dart';
import 'package:spare_boy/core/theme/app_theme.dart';
<<<<<<< HEAD
import 'package:spare_boy/features/common/widgets/textfields.dart';
=======
import 'package:spare_boy/views/onboarding/onboarding_screen.dart';
>>>>>>> dev

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
<<<<<<< HEAD
      home: const Scaffold(
        body: Center(
          child:Text('hello world')
        ),
      ),
=======
      home: const OnboardingScreen(),
>>>>>>> dev
    );
  }
}