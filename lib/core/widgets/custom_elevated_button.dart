import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/core/utils/app_color.dart';
import 'package:fruit_ecommerce_app/core/utils/styles.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final TextStyle? textStyle;
  final double? raduis;
  final double? padding;
  final VisualDensity? visualDensity;
  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onTap,
    this.backgroundColor,
    this.foregroundColor,
    this.textStyle,
    this.raduis,
    this.padding,
    this.visualDensity,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        visualDensity: visualDensity,
        padding: EdgeInsets.all(padding ?? 12),
        foregroundColor: foregroundColor ?? Colors.white,
        backgroundColor: backgroundColor ?? AppColor.primaryColor,
        textStyle: textStyle ?? AppStyles.textStyle16,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(raduis ?? 16),
        ),
      ),
      child: Text(
        text,
      ),
    );
  }
}
