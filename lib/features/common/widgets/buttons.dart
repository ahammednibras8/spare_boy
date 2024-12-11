import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spare_boy/core/constants/app_colors.dart';

class OnboardingButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Size? minimumSize;
  final Size? maximumSize;
  final double? borderRadius;
  final Color? color;
  final double? fontSize;
  const OnboardingButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.maximumSize,
      this.minimumSize,
      this.borderRadius,
      this.color,
      this.fontSize
    });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        minimumSize: minimumSize ?? const Size(330, 60),
        maximumSize: maximumSize ?? const Size(330, 60),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius ?? 16)),
        backgroundColor: color ?? AppColors.primary,
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: GoogleFonts.nunitoSans(
            color: AppColors.textSecondary,
            fontSize: fontSize ?? 22,
            fontWeight: FontWeight.w200),
      ),
    );
  }
}
