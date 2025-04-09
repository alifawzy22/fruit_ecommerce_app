import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/core/helper_functions/get_current_locale.dart';
import 'package:fruit_ecommerce_app/core/utils/app_color.dart';
import 'package:fruit_ecommerce_app/core/utils/assets_images.dart';
import 'package:fruit_ecommerce_app/core/utils/styles.dart';
import 'package:fruit_ecommerce_app/features/on_board/presentation/views/widgets/page_view_item.dart';
import 'package:fruit_ecommerce_app/generated/l10n.dart';

class OnBoardPageView extends StatelessWidget {
  final PageController pageController;
  const OnBoardPageView({
    super.key,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: PageView(
        controller: pageController,
        physics: ClampingScrollPhysics(),
        children: [
          PageViewItem(
            isSkipActive: pageController.hasClients
                ? pageController.page!.round() == 0
                : true,
            backgroundImage: AssetsImages.pageViewItem1BackGroundImage,
            image: AssetsImages.pageViewItem1Image,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${S.of(context).OnBoardItem1Title} ',
                  style: AppStyles.textStyle23,
                ),
                Text(
                  isLocaleArabic() ? 'HUB' : 'Fruit',
                  style: isLocaleArabic()
                      ? AppStyles.textStyle23
                          .copyWith(color: AppColor.orangeColor)
                      : AppStyles.textStyle23
                          .copyWith(color: AppColor.primaryColor),
                ),
                Text(
                  isLocaleArabic() ? 'Fruit' : 'HUB',
                  style: isLocaleArabic()
                      ? AppStyles.textStyle23
                          .copyWith(color: AppColor.primaryColor)
                      : AppStyles.textStyle23
                          .copyWith(color: AppColor.orangeColor),
                ),
              ],
            ),
            subTitle: S.of(context).OnBoardItem1SubTitle,
          ),
          PageViewItem(
            isSkipActive: pageController.hasClients
                ? pageController.page!.round() == 0
                : true,
            backgroundImage: AssetsImages.pageViewItem2BackGroundImage,
            image: AssetsImages.pageViewItem2Image,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  S.of(context).OnBoardItem2Title,
                  style: AppStyles.textStyle23,
                ),
              ],
            ),
            subTitle: S.of(context).OnBoardItem2SubTitle,
          ),
        ],
      ),
    );
  }
}
