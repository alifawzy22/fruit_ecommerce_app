import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/core/utils/app_routes.dart';

import 'widgets/on_board_view_body.dart';

class OnBoardView extends StatelessWidget {
  static const String routeName = AppRoutes.onBoardView;
  const OnBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardViewBody();
  }
}
