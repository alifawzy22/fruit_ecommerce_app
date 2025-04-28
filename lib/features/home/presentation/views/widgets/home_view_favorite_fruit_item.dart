import 'package:flutter/material.dart';

class HomeViewFavoriteFruitItem extends StatelessWidget {
  const HomeViewFavoriteFruitItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: IconButton.styleFrom(
        visualDensity: VisualDensity(
          horizontal: VisualDensity.minimumDensity,
          vertical: VisualDensity.minimumDensity,
        ),
      ),
      onPressed: () {},
      icon: Icon(
        Icons.favorite_outline_rounded,
      ),
    );
  }
}
