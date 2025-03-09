import 'package:flutter/material.dart';

import 'widgets/on_board_view_body.dart';

class OnBoardView extends StatelessWidget {
  static const String routeName = 'onBoard View';
  const OnBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardViewBody();
  }
}
