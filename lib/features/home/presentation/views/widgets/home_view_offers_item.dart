import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/core/helper_functions/app_layout.dart';
import 'package:fruit_ecommerce_app/core/helper_functions/get_current_locale.dart';
import 'package:fruit_ecommerce_app/core/utils/app_color.dart';
import 'package:fruit_ecommerce_app/core/utils/styles.dart';
import 'package:fruit_ecommerce_app/core/widgets/custom_elevated_button.dart';
import 'package:fruit_ecommerce_app/features/home/presentation/views/widgets/curved_background.dart';

import '../../../../../generated/l10n.dart';

class HomeViewOffersItem extends StatelessWidget {
  final int index;
  final String image;
  const HomeViewOffersItem(
      {super.key, required this.index, required this.image});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Padding(
        padding: isLocaleArabic()
            ? const EdgeInsets.only(left: 8)
            : const EdgeInsets.only(right: 8),
        child: Container(
          width: AppLayout.isTablet(context)
              ? AppLayout.getWidth(context) * 0.5
              : AppLayout.getWidth(context) * 0.85,
          height: AppLayout.getHeight(context) * 0.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                bottom: 0,
                right: isLocaleArabic()
                    ? (AppLayout.isTablet(context)
                        ? ((AppLayout.getWidth(context) * 0.5) / 2) -
                            (AppLayout.getWidth(context) * 0.1)
                        : ((AppLayout.getWidth(context) * 0.85) / 2) -
                            (AppLayout.getWidth(context) * 0.1))
                    : 0,
                left: isLocaleArabic()
                    ? 0
                    : (AppLayout.isTablet(context)
                        ? ((AppLayout.getWidth(context) * 0.5) / 2) -
                            (AppLayout.getWidth(context) * 0.1)
                        : ((AppLayout.getWidth(context) * 0.85) / 2) -
                            (AppLayout.getWidth(context) * 0.1)),
                child: Image.asset(
                  image,
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                top: 0,
                bottom: 0,
                right: isLocaleArabic()
                    ? 0
                    : (AppLayout.isTablet(context)
                            ? ((AppLayout.getWidth(context) * 0.5) / 2)
                            : AppLayout.getWidth(context) * 0.85) /
                        2,
                left: isLocaleArabic()
                    ? (AppLayout.isTablet(context)
                            ? ((AppLayout.getWidth(context) * 0.5) / 2)
                            : AppLayout.getWidth(context) * 0.85) /
                        2
                    : 0,
                child: CurvedBackground(
                  curveOnLeft: isLocaleArabic() ? true : false,
                  color: index.isEven
                      ? AppColor.homeViewOfferCardBGColor
                      : AppColor.orangeColor,
                  width: AppLayout.isTablet(context)
                      ? (AppLayout.getWidth(context) * 0.5) / 2
                      : (AppLayout.getWidth(context) * 0.85) / 2,
                  height: AppLayout.getHeight(context) * 0.2,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          S.of(context).EidOffers,
                          style: AppStyles.textStyle13.copyWith(
                              fontWeight: FontWeight.w400, color: Colors.white),
                        ),
                        Spacer(),
                        Text(
                          S.of(context).OffersDiscount(80),
                          style: AppStyles.textStyle19
                              .copyWith(color: Colors.white),
                        ),
                        SizedBox(height: 8),
                        SizedBox(
                          width: double.infinity,
                          child: CustomElevatedButton(
                            visualDensity: VisualDensity(
                              vertical: VisualDensity.minimumDensity,
                            ),
                            backgroundColor: Colors.white,
                            foregroundColor: AppColor.primaryColor,
                            raduis: 4,
                            padding: 4,
                            textStyle: AppStyles.textStyle13,
                            text: S.of(context).ShoppingNow,
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
