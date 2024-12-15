import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import 'package:spare_boy/core/constants/app_colors.dart';
import 'package:spare_boy/features/authentication/views/password_reset.dart';
import 'package:spare_boy/features/common/widgets/buttons.dart';
import 'package:spare_boy/features/common/widgets/circle_avatar.dart';

class RecoveryPage extends StatefulWidget {
  const RecoveryPage({super.key});

  @override
  State<RecoveryPage> createState() => _RecoveryPageState();
}

class _RecoveryPageState extends State<RecoveryPage> {
  TextEditingController otpController = TextEditingController();

  final PinTheme defaultPinTheme = PinTheme(
    textStyle: GoogleFonts.nunitoSans(
      fontSize: 19,
      fontWeight: FontWeight.w600,
      color: AppColors.textPrimary,
    ),
    width: 55,
    height: 55,
    decoration: BoxDecoration(
      color: Colors.grey[200],
      borderRadius: BorderRadius.circular(12),
    ),
  );

  final PinTheme focusedPinTheme = PinTheme(
    textStyle: GoogleFonts.nunitoSans(
      fontSize: 19,
      fontWeight: FontWeight.w600,
      color: AppColors.textPrimary,
    ),
    width: 55,
    height: 55,
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 210, 210, 210),
      borderRadius: BorderRadius.circular(12),
    ),
  );

  final PinTheme errorPinTheme = PinTheme(
    textStyle: GoogleFonts.nunitoSans(
      fontSize: 19,
      fontWeight: FontWeight.w600,
      color: Colors.red,
    ),
    width: 55,
    height:55,
    decoration: BoxDecoration(
      color: Colors.grey[200],
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: Colors.red),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              const AvatarCicle(
                shadowSpreadRadius: -2,
                size: 40,
                child: Icon(
                  Icons.security_rounded, 
                  size: 40,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: 30),
              Text(
                'Password Recovery',
                style: GoogleFonts.raleway(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Enter 4-digits code we sent you\non your phone number',
                textAlign: TextAlign.center,
                style: GoogleFonts.nunitoSans(
                  fontSize: 19,
                  fontWeight: FontWeight.w300,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                '+98*******00',
                style: GoogleFonts.nunitoSans(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: 30),
              Pinput(
                controller: otpController,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: focusedPinTheme,
                errorPinTheme: errorPinTheme,
                keyboardType: TextInputType.number,
                length: 4,
                showCursor: false,
                onCompleted: (value) async {
                  otpController.clear();
                  if (value == '1234') {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PasswordReset(),
                      ),
                    );
                  }
                },
                validator: (value) {
                  if (value != '1234' || value!.length != 4) {
                    return 'Please enter a valid 4-digit code';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 150,),
              OnboardingButton(
                minimumSize: const Size(220, 60),
                text: 'Send Again',
                onPressed: () {
                  otpController.clear();
                },
              ),
              const SizedBox(height: 17),
              CancelButton(
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
