import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/core/utils/app_color.dart';

OutlineInputBorder buildOutlinedInputBorder() => OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(
        color: AppColor.textFormFieldBorderColor,
      ),
    );
