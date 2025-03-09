import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/features/splash/presentation/views/splash_view.dart';

import '../../features/on_board/presentation/views/on_board_view.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case OnBoardView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
