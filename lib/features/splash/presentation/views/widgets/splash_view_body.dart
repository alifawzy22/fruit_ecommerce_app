import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_ecommerce_app/core/utils/assets_images.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
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
}
