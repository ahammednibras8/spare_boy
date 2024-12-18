import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spare_boy/core/constants/app_colors.dart';
import 'package:spare_boy/features/authentication/views/login.dart';
import 'package:spare_boy/features/common/widgets/buttons.dart';
import 'package:spare_boy/features/common/widgets/my_appbar.dart';
import 'package:spare_boy/features/common/widgets/textfields.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool showPassword = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppbar(isLoggedIn: false),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SizedBox(
          height: MediaQuery.of(context).size.height - kToolbarHeight - 30,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10, left: 20),
                child: Text(
                  'Create Account',
                  style: GoogleFonts.raleway(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary),
                ),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    width: 90,
                    height: 90,
                    child: Image.asset(
                      'assets/icons/upload_photo.png',
                      fit: BoxFit.contain,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Form(
                  key: _formKey,
                  child: Column(children: [
                    OnboardingTextField(
                      label: 'Username',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your username';
                        }
                        return null;
                      },
                    ),
                    OnboardingTextField(
                      label: 'Email',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                    ),
                    OnboardingTextField(
                        label: 'Password',
                        validator: (value) {
                          if (value == null || value == '') {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                        showPassword: showPassword,
                        suffixIcon: IconButton(
                          icon: Icon(showPassword
                              ? Icons.visibility
                              : Icons.visibility_off),
                          color: AppColors.textPrimary,
                          onPressed: () {
                            setState(() {
                              showPassword = !showPassword;
                            });
                          },
                        )),
                    const SizedBox(height: 15),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()));
                      },
                      child: Text(
                        'Already have an account?',
                        style: GoogleFonts.nunitoSans(
                          color: AppColors.textPrimary,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          decoration: TextDecoration.underline,
                          decorationThickness: 1,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    OnboardingButton(
                      text: 'Sign Up',
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {}
                      },
                      minimumSize: const Size(325, 60),
                    ),
                    const SizedBox(height: 15),
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
