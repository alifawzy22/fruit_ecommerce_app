import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/features/home/presentation/views/widgets/bottom_navigation_active_image.dart';
import 'package:fruit_ecommerce_app/features/home/presentation/views/widgets/bottom_navigation_inactive_image.dart';

import '../../../domain/home_entity/bottom_navigation_entity.dart';

class BottomNavigationBarItemSelected extends StatelessWidget {
  final bool isSelected;
  final BottomNavigationEntity bottomNavigationEntity;
  const BottomNavigationBarItemSelected(
      {super.key,
      required this.isSelected,
      required this.bottomNavigationEntity});

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? BottomNavigationActiveImage(
            bottomNavigationEntity: bottomNavigationEntity,
          )
        : BottomNavigationInActiveImage(
            bottomNavigationEntity: bottomNavigationEntity,
          );
  }
}
