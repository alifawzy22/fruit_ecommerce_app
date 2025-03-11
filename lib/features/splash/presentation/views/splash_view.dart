import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/core/utils/app_routes.dart';

import 'widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  static const String routeName = AppRoutes.splashView;
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return SplashViewBody();
  }
}
