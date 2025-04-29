import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../domain/home_entity/bottom_navigation_entity.dart';

class BottomNavigationInActiveImage extends StatelessWidget {
  final BottomNavigationEntity bottomNavigationEntity;
  const BottomNavigationInActiveImage(
      {super.key, required this.bottomNavigationEntity});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      bottomNavigationEntity.inactiveImage,
      // width: 16,
      // height: 16,
      // fit: BoxFit.fill,
    );
  }
}
