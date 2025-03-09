import 'package:flutter/material.dart';

import 'widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  static const String routeName = 'SplashView';
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return SplashViewBody();
  }
}
