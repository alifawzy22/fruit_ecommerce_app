import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/core/helper_functions/get_current_locale.dart';
import 'package:fruit_ecommerce_app/core/utils/app_color.dart';
import 'package:fruit_ecommerce_app/core/utils/assets_images.dart';
import 'package:fruit_ecommerce_app/core/utils/styles.dart';
import 'package:fruit_ecommerce_app/generated/l10n.dart';

import 'home_view_favorite_fruit_item.dart';

class HomeViewFruitItem extends StatelessWidget {
  final double productPrice;
  const HomeViewFruitItem({super.key, required this.productPrice});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.fruitItemBGColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 4,
            top: 8,
            child: HomeViewFavoriteFruitItem(),
          ),
          Positioned.fill(
            top: 20,
            bottom: 0,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(
                    AssetsImages.testImage,
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.fill,
                  ),
                ),
                Expanded(
                  child: ListTile(
                    contentPadding: EdgeInsets.all(4),
                    title: Text(
                      'بطيخ',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppStyles.textStyle13.copyWith(
                        height: 2,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF0C0D0D),
                      ),
                    ),
                    subtitle: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '$productPrice',
                            style: AppStyles.textStyle13.copyWith(
                              color: AppColor.orangeColor,
                            ),
                          ),
                          TextSpan(
                            text: '\n',
                            style: AppStyles.textStyle13.copyWith(
                              color: AppColor.orangeColor,
                            ),
                          ),
                          TextSpan(
                            text: S.of(context).CurrencyPer(
                                  isLocaleArabic() ? 'جنية' : 'EGY',
                                ),
                            style: AppStyles.textStyle13.copyWith(
                              color: AppColor.orangeColor,
                            ),
                          ),
                          TextSpan(
                            text: S.of(context).Unit(
                                  isLocaleArabic() ? 'الكيلو' : 'KG',
                                ),
                            style: AppStyles.textStyle13.copyWith(
                              color: AppColor.orangeLightColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    trailing: GestureDetector(
                      onTap: () {},
                      child: CircleAvatar(
                        backgroundColor: AppColor.primaryColor,
                        foregroundColor: Colors.white,
                        radius: 18,
                        child: Icon(
                          Icons.add,
                          size: 36,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
