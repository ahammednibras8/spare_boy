import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  const MyButton({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff004CFF),
        foregroundColor: const Color(0xffF3F3F3),
        maximumSize: const Size(330, 60),
        minimumSize: const Size(330, 60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      onPressed: () {},
      child: Text(
        title,
      ),
    );
  }
}
