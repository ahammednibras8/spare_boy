import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spare_boy/core/constants/app_colors.dart';
import 'package:spare_boy/features/authentication/views/recovery_mode.dart';
import 'package:spare_boy/features/authentication/views/sign_up.dart';
import 'package:spare_boy/features/common/widgets/buttons.dart';
import 'package:spare_boy/features/common/widgets/my_appbar.dart';
import 'package:spare_boy/features/common/widgets/textfields.dart';
import 'package:spare_boy/features/home/views/structure.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showPassword = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppbar(),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height - kToolbarHeight - 30,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Login',
                  style: GoogleFonts.raleway(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      'Good to see you back!',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Icon(
                      Icons.favorite,
                      color: AppColors.blackPrimary,
                      size: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    OnboardingTextField(
                      label: 'Email',
                      validator: (value) {
                        return;
                      },
                    ),
                    OnboardingTextField(
                      label: 'Password',
                      validator: (value) {
                        return;
                      },
                      showPassword: showPassword,
                      suffixIcon: IconButton(
                        icon: Icon(
                          showPassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        color: AppColors.blackPrimary,
                        onPressed: () {
                          setState(() {
                            showPassword = !showPassword;
                          });
                        },
                      ),
                    ),
                    Container(
                        alignment: Alignment.centerRight,
                        margin: const EdgeInsets.only(right: 25, top: 5),
                        child: GestureText(
                          text: 'Forgot Password?',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const RecoveryMode(),
                              ),
                            );
                          },
                          fontSize: 14,
                        )),
                    const SizedBox(height: 30),
                    GestureText(text: 'Don\'t have an account?', onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpScreen(),
                        ),
                      );
                    }),
                    const SizedBox(height: 5),
                    OnboardingButton(
                      text: 'Login',
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const StructureScreen(),
                            ));
                      },
                      minimumSize: const Size(325, 60),
                    ),
                    const SizedBox(height: 25),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
