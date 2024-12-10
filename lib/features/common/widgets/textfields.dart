
import 'package:flutter/material.dart';
import 'package:spare_boy/core/theme/app_colors.dart';

class OnboardingTextField extends StatelessWidget{
  final String label;
  final Icon? icon;
  final FormFieldValidator? validator;
  const OnboardingTextField({super.key,required this.label, this.validator,this.icon});

  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: 335,
      height: 55,
      child: TextFormField(
        cursorColor: Color(0xFF1F1F1F),
        cursorWidth: 1,
        cursorHeight: 16,
        decoration: InputDecoration(
          fillColor: const Color(0xFFF2F2F2),
          filled: true,
          contentPadding: EdgeInsets.only(left: 20,bottom: 25,top: 20),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(30)
          ),
          hintText: label,
          hintStyle: const TextStyle(
            color: AppColors.textFormField,
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
          suffixIcon: icon,
          
        ),
        validator: validator,
      ),
    );
  }
}