import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/constants.dart';
import 'package:fruit_ecommerce_app/core/utils/app_color.dart';
import 'package:fruit_ecommerce_app/core/utils/styles.dart';

ThemeData buildThemeData() => ThemeData(
      fontFamily: kFontFamilyApp,
      colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primaryColor),
      appBarTheme: AppBarTheme(
        centerTitle: true,
        titleTextStyle: AppStyles.textStyle19,
        elevation: 0,
        color: Colors.transparent,
      ),
    );
