import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/core/helper_functions/build_outlined_border.dart';
import 'package:fruit_ecommerce_app/core/utils/app_color.dart';
import 'package:fruit_ecommerce_app/core/utils/styles.dart';
import 'package:fruit_ecommerce_app/generated/l10n.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.keyBoardType,
    this.suffixIcon,
    this.obsecureText = false,
    this.onSaved,
  });
  final String hintText;
  final TextInputType keyBoardType;
  final Widget? suffixIcon;
  final bool obsecureText;
  final void Function(String?)? onSaved;
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
      validator: (value) {
        if (value == null || value.isEmpty) {
          return S.of(context).requiredFiled(hintText);
        }
        return null;
      },
      onSaved: onSaved,
    );
  }
}
