import 'package:flutter/material.dart';
import 'package:spare_boy/views/widgets/my_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 2),
            const Text(
              'Spare Boy',
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 52,
                fontWeight: FontWeight.bold,
                letterSpacing: -0.52,
                color: Color(0xff202020),
              ),
            ),
            const SizedBox(height: 18),
            const Text(
              'Quik, Reliable, Unstopable',
              style: TextStyle(
                fontFamily: 'Nunito Sans',
                fontSize: 19,
                height: 0.57,
                color: Color(0xff202020),
              ),
            ),
            const Spacer(flex: 3),
            const Padding(
              padding: EdgeInsets.only(bottom: 40),
              child: MyButton(
                title: 'Let\'s get started',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: GestureDetector(
                onTap: () {},
                child: const Text(
                  'Already have an account?',
                  style: TextStyle(
                    fontFamily: 'Nunito Sans',
                    fontSize: 15,
                    height: 0.57,
                    color: Color(0xff202020),
                    decoration: TextDecoration.underline,
                    decorationColor: Color(0xff004CFF),
                    decorationStyle: TextDecorationStyle.solid,
                    decorationThickness: 3,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
