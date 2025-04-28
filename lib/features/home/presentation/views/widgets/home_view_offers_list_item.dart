import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/core/utils/assets_images.dart';
import 'package:fruit_ecommerce_app/features/home/presentation/views/widgets/home_view_offers_item.dart';

class HomeViewOffersListItem extends StatelessWidget {
  const HomeViewOffersListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return HomeViewOffersItem(
          index: index,
          image: AssetsImages.testImage,
        );
      },
    );
  }
}
