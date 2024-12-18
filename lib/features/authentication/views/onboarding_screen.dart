import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spare_boy/core/constants/app_colors.dart';
import 'package:spare_boy/features/authentication/views/login.dart';
import 'package:spare_boy/features/common/widgets/buttons.dart';
import 'package:spare_boy/features/common/widgets/circle_avatar.dart';
import 'package:spare_boy/features/home/views/structure.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  }

  @override
  void dispose() {
    // Optional: Reset orientation settings when leaving the screen
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Spacer(flex: 6),
            // this is in common widgets
            const AvatarCicle(
              padding: 20,
              shadowOffsetY: 3,
              shadowSpreadRadius: 0,
              image: 'assets/icons/test_shop.png',
            ),
            const Spacer(
              flex: 1,
            ),
            const Text(
              'Spare Boy',
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 52,
                fontWeight: FontWeight.bold,
                letterSpacing: -0.52,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 18),
            Text(
              'Quick, Reliable,\n\n\n Unstoppable!!',
              style: GoogleFonts.nunitoSans(
                fontSize: 21,
                height: 0.57,
                wordSpacing: 2,
                letterSpacing: 1,
                fontWeight: FontWeight.w200,
                color: AppColors.textPrimary,
              ),
            ),
            const Spacer(flex: 3),
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: OnboardingButton(
                text: "Let's get started",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      //TODO: Rename the route
                      builder: (context) => const StructureScreen(),
                    ),
                  );
                },
                minimumSize: const Size(320, 60),
              ),
            ),
            SizedBox(
              width: 500,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'I already have an account',
                    style: GoogleFonts.nunitoSans(
                      fontWeight: FontWeight.w300,
                      letterSpacing: 0,
                      wordSpacing: 2,
                      fontSize: 15,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SmallBlueButton(
                    icon: Icons.arrow_forward_rounded,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
            const Spacer(
              flex: 2,
            )
          ],
        ),
      ),
    );
  }
}
