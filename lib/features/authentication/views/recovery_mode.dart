import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spare_boy/core/constants/app_colors.dart';
import 'package:spare_boy/features/authentication/views/recovery_page.dart';
import 'package:spare_boy/features/common/widgets/buttons.dart';
import 'package:spare_boy/features/common/widgets/circle_avatar.dart';
import 'package:spare_boy/features/common/widgets/my_appbar.dart';

class RecoveryMode extends StatefulWidget {
  const RecoveryMode({super.key});

  @override
  State<RecoveryMode> createState() => _RecoveryModeState();
}

class _RecoveryModeState extends State<RecoveryMode> {
  String _selectedOption = 'SMS';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppbar(),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            const AvatarCicle(
              shadowBlurRadius: 10,
              shadowSpreadRadius: 0,
              size: 40,
              child: Center(
                child: Icon(
                  Icons.priority_high_rounded,
                  size: 40,
                  color: AppColors.blackPrimary,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Text(
              'Password Recovery',
              textAlign: TextAlign.center,
              style: GoogleFonts.raleway(
                color: AppColors.textPrimary,
                fontSize: 21,
                letterSpacing: -0.28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'How you would like to restore\nyour password?',
              textAlign: TextAlign.center,
              style: GoogleFonts.nunitoSans(
                fontSize: 19,
                fontWeight: FontWeight.w300,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 40),
            _buildOptionTile('SMS'),
            const SizedBox(height: 12),
            _buildOptionTile('Email'),
            const SizedBox(height: 120),
            OnboardingButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RecoveryPage()));
              },
              text: 'Next',
            ),
            const SizedBox(height: 17),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionTile(String option) {
    return Material(
      color: Colors.transparent,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: 170,
        height: 45,
        decoration: BoxDecoration(
          color: _selectedOption == option
              ? AppColors.blackPrimary.withOpacity(0.1)
              : Colors.grey[200],
          borderRadius: BorderRadius.circular(50),
        ),
        child: InkWell(
          hoverColor: AppColors.blackPrimary.withOpacity(0.1),
          borderRadius: BorderRadius.circular(50),
          onTap: () {
            setState(() {
              _selectedOption = option;
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: 5),
                AnimatedDefaultTextStyle(
                  duration: const Duration(milliseconds: 200),
                  style: GoogleFonts.raleway(
                    fontSize: 15,
                    fontWeight: _selectedOption == option
                        ? FontWeight.bold
                        : FontWeight.w500,
                    color: AppColors.textPrimary,
                  ),
                  child: Text(option),
                ),
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 200),
                  transitionBuilder:
                      (Widget child, Animation<double> animation) {
                    return ScaleTransition(
                      scale: animation,
                      child: child,
                    );
                  },
                  child: _selectedOption == option
                      ? Container(
                          key: const ValueKey('selected'),
                          width: 30,
                          height: 30,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.blackPrimary,
                          ),
                          child: const Icon(
                            Icons.check,
                            size: 14,
                            color: Colors.white,
                          ),
                        )
                      : Container(
                          key: const ValueKey('unselected'),
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
