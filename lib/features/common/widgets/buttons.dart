
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spare_boy/core/theme/app_colors.dart';

class OnboardingButton extends StatelessWidget{
  final String text;
  final VoidCallback onPressed;
  const OnboardingButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
  return TextButton(
    
    style: TextButton.styleFrom(
      minimumSize: const Size(330, 60),
      maximumSize: const Size(330, 60),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
      ),
      backgroundColor: AppColors.primary,
      
    ),
    onPressed: onPressed, 
    child: Text(text,style: GoogleFonts.nunitoSans(
      color: AppColors.textSecondary,
      fontSize: 22,
      fontWeight: FontWeight.w200
    ),),
    );
}
}
