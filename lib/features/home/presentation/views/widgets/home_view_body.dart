import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/core/utils/styles.dart';
import 'package:fruit_ecommerce_app/features/home/presentation/views/widgets/custom_home_view_search_text_field.dart';
import 'package:fruit_ecommerce_app/features/home/presentation/views/widgets/home_view_grid_view_fruit_item.dart';
import 'package:fruit_ecommerce_app/features/home/presentation/views/widgets/home_view_offers_list_item.dart';
import 'package:fruit_ecommerce_app/generated/l10n.dart';
import '../../../../../core/helper_functions/app_layout.dart';
import 'custom_home_view_list_tile.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                CustomHomeViewListTile(),
                SizedBox(height: 16),
                CustomHomeViewSearchTextField(),
                SizedBox(height: 12),
                SizedBox(
                  height: AppLayout.getHeight(context) * 0.2,
                  child: HomeViewOffersListItem(),
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      S.of(context).MorePurchases,
                      style: AppStyles.textStyle16,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        S.of(context).More,
                        style: AppStyles.textStyle13
                            .copyWith(fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
              ],
            ),
          ),
          HomeViewGridViewFruitItem(),
        ],
      ),
    );
  }
}
