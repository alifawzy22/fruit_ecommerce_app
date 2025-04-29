import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/generated/l10n.dart';

import '../../features/home/domain/home_entity/bottom_navigation_entity.dart';
import '../../features/home/presentation/views/widgets/bottom_navigation_bar_selected_item.dart';
import '../utils/assets_images.dart';

List<BottomNavigationBarItem> getBottomNavigationBarItems(
    int currentIndex, context) {
  var bottomList = [
    BottomNavigationEntity(
      activeImage: AssetsImages.homeFilledIcon,
      inactiveImage: AssetsImages.homeOutlinedIcon,
      label: S.of(context).Home,
    ),
    BottomNavigationEntity(
      activeImage: AssetsImages.cartFilledIcon,
      inactiveImage: AssetsImages.cartOutlinedIcon,
      label: S.of(context).Cart,
    ),
    BottomNavigationEntity(
      activeImage: AssetsImages.productsFilledIcon,
      inactiveImage: AssetsImages.productsOutlinedIcon,
      label: S.of(context).Categories,
    ),
    BottomNavigationEntity(
      activeImage: AssetsImages.profileFilledIcon,
      inactiveImage: AssetsImages.profileOutlinedIcon,
      label: S.of(context).Profile,
    ),
  ];
  return bottomList.asMap().entries.map((e) {
    int index = e.key;
    var entity = e.value;

    return BottomNavigationBarItem(
      icon: BottomNavigationBarItemSelected(
        isSelected: index == currentIndex,
        bottomNavigationEntity: entity,
      ),
      label: e.value.label,
    );
  }).toList();
}
