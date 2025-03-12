import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/core/helper_functions/build_outlined_border.dart';
import 'package:fruit_ecommerce_app/core/utils/app_color.dart';
import 'package:fruit_ecommerce_app/core/utils/styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.keyBoardType,
    this.suffixIcon,
    this.obsecureText = false,
  });
  final String hintText;
  final TextInputType keyBoardType;
  final Widget? suffixIcon;
  final bool obsecureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: buildOutlinedInputBorder(),
        enabledBorder: buildOutlinedInputBorder(),
        focusedBorder: buildOutlinedInputBorder(),
        errorBorder: buildOutlinedInputBorder(),
        filled: true,
        fillColor: AppColor.textFormFieldFillColor,
        hintText: hintText,
        hintStyle: AppStyles.textStyle13,
        suffixIcon: suffixIcon,
      ),
      keyboardType: keyBoardType,
      obscureText: obsecureText,
    );
  }
}
