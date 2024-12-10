import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class onboardingButton extends StatelessWidget{
  final String text;
  final VoidCallback onPressed;
  const onboardingButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
  return TextButton(
    
    style: TextButton.styleFrom(
      minimumSize: const Size(330, 60),
      maximumSize: const Size(330, 60),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
      ),
      backgroundColor: const Color(0xFF004CFF),
      
    ),
    onPressed: onPressed, 
    child: Text(text,style: GoogleFonts.nunitoSans(
      color: const Color(0xFFF3F3F3),
      fontSize: 22,
      fontWeight: FontWeight.w200
    ),),
    );
}
}
