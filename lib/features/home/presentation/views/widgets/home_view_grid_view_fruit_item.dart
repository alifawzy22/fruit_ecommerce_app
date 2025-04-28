import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/features/home/presentation/views/widgets/home_view_fruit_item.dart';

class HomeViewGridViewFruitItem extends StatelessWidget {
  const HomeViewGridViewFruitItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 4,
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 163 / 214,
          crossAxisSpacing: 8,
          mainAxisSpacing: 16,
        ),
        itemBuilder: (context, index) {
          return HomeViewFruitItem(
            productPrice: 9500,
          );
        });
  }
}
