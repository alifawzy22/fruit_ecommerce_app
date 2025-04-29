import 'package:flutter/material.dart';

import 'package:fruit_ecommerce_app/features/home/presentation/views/widgets/home_view_body.dart';

import 'widgets/custom_bottom_navigation_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static const String routeName = 'Home View';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: HomeViewBody(),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
