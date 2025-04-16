// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_ecommerce_app/constants.dart';
import 'package:fruit_ecommerce_app/core/helper_functions/get_current_locale.dart';
import 'package:fruit_ecommerce_app/core/utils/assets_images.dart';
import 'package:fruit_ecommerce_app/core/utils/services/shared_preferences_singelton.dart';
import 'package:fruit_ecommerce_app/features/auth/presentation/views/login_view.dart';
import 'package:fruit_ecommerce_app/features/on_board/presentation/views/on_board_view.dart';

import '../../../../home/presentation/views/home_view.dart' show HomeView;

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  initState() {
    super.initState();
    excuteNavigator();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: isLocaleArabic()
                ? MainAxisAlignment.end
                : MainAxisAlignment.start,
            children: [
              SvgPicture.asset(AssetsImages.splashPlant),
            ],
          ),
          SvgPicture.asset(AssetsImages.splashFruit),
          SvgPicture.asset(
            AssetsImages.splashDots,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }

  void excuteNavigator() {
    Future.delayed(const Duration(seconds: 2), () {
      if (Prefs.getBool(kIsOnBoardViewed)) {
        if (Prefs.getBool(kUserLoggedIn)) {
          Navigator.pushReplacementNamed(context, HomeView.routeName);
        } else {
          Navigator.pushReplacementNamed(context, LoginView.routeName);
        }
      } else {
        Navigator.pushReplacementNamed(context, OnBoardView.routeName);
      }
    });
  }
}
