import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_ecommerce_app/core/helper_functions/get_current_locale.dart';
import 'package:fruit_ecommerce_app/core/utils/app_color.dart';
import 'package:fruit_ecommerce_app/core/utils/styles.dart';

import '../../../../../generated/l10n.dart';

class PageViewItem extends StatelessWidget {
  final String backgroundImage, image;
  final Widget title;
  final String subTitle;
  final bool isSkipActive;
  const PageViewItem({
    super.key,
    required this.backgroundImage,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.isSkipActive,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.4,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  backgroundImage,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(image),
              ),
              Visibility(
                visible: isSkipActive,
                child: Positioned(
                  top: 20,
                  right: isLocaleArabic() ? 20 : 0,
                  left: isLocaleArabic() ? 0 : 20,
                  child: Text(
                    S.of(context).OnBoardNextStep,
                    style: AppStyles.textStyle16.copyWith(
                      color: AppColor.primaryTextColor.withValues(alpha: 0.5),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 64),
        title,
        SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            subTitle,
            textAlign: TextAlign.center,
            style: AppStyles.textStyle16,
          ),
        ),
      ],
    );
  }
}
