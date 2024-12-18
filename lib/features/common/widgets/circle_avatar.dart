import 'package:flutter/material.dart';
import 'package:spare_boy/core/constants/app_colors.dart';

class AvatarCicle extends StatelessWidget {
  final double? size;
  final Color? color;
  final Color? shadowColor;
  final double? shadowBlurRadius;
  final double? shadowSpreadRadius;
  final double? shadowOffsetX;
  final double? shadowOffsetY;
  final double? padding;
  final String? image;
  final Widget? child;
  const AvatarCicle({
    super.key,
    this.size,
    this.color,
    this.shadowBlurRadius,
    this.shadowColor,
    this.shadowSpreadRadius,
    this.shadowOffsetX,
    this.shadowOffsetY,
    this.padding,
    this.image,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: shadowColor ?? const Color.fromARGB(66, 158, 158, 158),
            blurRadius: shadowBlurRadius ?? 10,
            spreadRadius: shadowSpreadRadius ?? 0,
            offset: Offset(
              shadowOffsetX ?? 0.0,
              shadowOffsetY ?? 0.0,
            ),
          ),
        ],
      ),
      child: CircleAvatar(
        radius: size ?? 70.0,
        backgroundColor: color ?? Colors.white,
        child: Container(
          margin: EdgeInsetsDirectional.all(padding ?? 10),
          decoration: const ShapeDecoration(shape: CircleBorder()),
          child: image != null ? Image.asset(image!,fit: BoxFit.contain,color: AppColors.textPrimary,) :  child ?? const SizedBox.shrink(),
        ),
      ),
    );
  }
}
