import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/core/utils/app_routes.dart';

import 'widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  static const String routeName = AppRoutes.loginView;
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return LoginViewBody();
  }
}
