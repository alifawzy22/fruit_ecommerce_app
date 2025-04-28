import 'package:flutter/material.dart';

class AppLayout {
  static double getHeight(context) => MediaQuery.of(context).size.height;
  static double getWidth(context) => MediaQuery.of(context).size.width;
  static bool isTablet(context) =>
      MediaQuery.of(context).size.width >= 600 &&
      MediaQuery.of(context).size.width < 1300;
}
