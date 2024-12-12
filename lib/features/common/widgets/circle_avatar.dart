import 'package:flutter/material.dart';

class AvatarCicle extends StatelessWidget {
  final double? radius;
  final Color? color;
  final Color? shadowColor;
  final double? shadowBlurRadius;
  final double? shadowSpreadRadius;
  final double? shadowOffsetX;
  final double? shadowOffsetY;
  final double? padding;
  final String? image;
  const AvatarCicle({
    super.key,
    this.radius,
    this.color,
    this.shadowBlurRadius,
    this.shadowColor,
    this.shadowSpreadRadius,
    this.shadowOffsetX,
    this.shadowOffsetY,
    this.padding,
    this.image,
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
        radius: radius ?? 70.0,
        backgroundColor: color ?? Colors.white,
        child: Container(
          margin: EdgeInsetsDirectional.all(padding ?? 10),
          decoration: const ShapeDecoration(shape: CircleBorder()),
          child: image != null ? Image.asset(image!,fit: BoxFit.contain,) : const SizedBox.shrink(),
        ),
      ),
    );
  }
}
