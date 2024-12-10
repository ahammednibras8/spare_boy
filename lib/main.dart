import 'package:flutter/material.dart';
import 'package:spare_boy/features/common/widgets/buttons.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: onboardingButton(text: 'Get Started', onPressed: (){}),
        ),
      ),
    );
  }
}
