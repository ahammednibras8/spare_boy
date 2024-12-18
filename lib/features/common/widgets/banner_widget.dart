import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints) {
        return Container(
          width: constraints.maxWidth,
          height: 130,
          margin: const EdgeInsets.all(10),
          child: Image.asset(
            'assets/banners/banner.png',
            fit: BoxFit.contain,
          ),
        );
      }
    );
  }
}