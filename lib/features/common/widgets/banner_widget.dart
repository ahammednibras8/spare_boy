import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Image.asset(
        'assets/banners/banner.png',
        fit: BoxFit.contain,
      ),
    );
  }
}