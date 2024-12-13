import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spare_boy/core/constants/app_colors.dart';


class OnboardingTextField extends StatelessWidget {
  final String label;
  final IconButton? suffixIcon;
  final FormFieldValidator validator;
  final TextInputType? keyBoardType;
  final bool? showPassword;
  const OnboardingTextField(
      {super.key, 
      required this.label,
      required this.validator,
      this.keyBoardType,
      this.suffixIcon,
      this.showPassword,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: 335,
      height: 55,
      child: TextFormField(
        cursorColor: const Color(0xFF1F1F1F),
        cursorWidth: 1,
        cursorHeight: 16,
        decoration: InputDecoration(
          fillColor: const Color.fromARGB(230, 242, 242, 242),
          filled: true,
          contentPadding:
              const EdgeInsets.only(left: 20, bottom: 18, top: 18, right: 20),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(30)),
          hintText: label,
          hintStyle: GoogleFonts.poppins(
            color: AppColors.textFormField,
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
          isDense: true,
          suffixIcon: suffixIcon,
          suffixIconConstraints: const BoxConstraints(
              minHeight: 50, minWidth: 60, maxHeight: 50, maxWidth: 60),
        ),
        obscureText: showPassword ?? false,
        validator: validator,
        keyboardType: keyBoardType ?? TextInputType.text,
      ),
    );
  }
}
