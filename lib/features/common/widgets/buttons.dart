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
  final Color? textColor;
  final double? fontSize;
  final double? paddingHorizontal;
  final double? paddingVertical;
  final FontWeight? fontWeight;
  const OnboardingButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.maximumSize,
      this.minimumSize,
      this.borderRadius,
      this.color,
      this.textColor,
      this.fontWeight,
      this.fontSize,
      this.paddingHorizontal,
      this.paddingVertical,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: paddingHorizontal ?? 10 , vertical: paddingVertical ?? 10),
      child: TextButton(
        style: TextButton.styleFrom(
          minimumSize: minimumSize ?? const Size(280, 60),
          maximumSize: maximumSize ?? const Size(330, 60),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 16)),
          backgroundColor: color ?? AppColors.textPrimary,
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: GoogleFonts.nunitoSans(
              color: textColor ?? AppColors.textSecondary,
              fontSize: fontSize ?? 22,
              fontWeight: fontWeight ?? FontWeight.w200
            ),
        ),
      ),
    );
  }
}

class SmallBlueButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onTap;
  const SmallBlueButton({super.key, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: 30,
          height: 30,
          decoration: const BoxDecoration(
            color: AppColors.textPrimary,
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: Colors.white,
          )),
    );
  }
}


class CancelButton extends StatelessWidget {
  final VoidCallback onTap;
  final double? fontSize;
  final FontWeight? fontWeight;
  final EdgeInsetsGeometry? margin;

  const CancelButton({
    super.key,
    required this.onTap,
    this.fontSize = 16,
    this.fontWeight = FontWeight.w300,
    this.margin = const EdgeInsets.only(bottom: 20, right: 5),
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: margin,
        child: Text(
          'Cancel',
          style: GoogleFonts.nunitoSans(
            color: AppColors.textPrimary,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}

