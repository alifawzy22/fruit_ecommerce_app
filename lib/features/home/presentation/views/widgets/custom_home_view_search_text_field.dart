import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_ecommerce_app/core/utils/styles.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/assets_images.dart';
import '../../../../../generated/l10n.dart';

class CustomHomeViewSearchTextField extends StatelessWidget {
  const CustomHomeViewSearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 9,
            spreadRadius: 0,
            offset: const Offset(0, 2),
            color: AppColor.hintTextColor.withValues(alpha: 0.09),
            blurStyle: BlurStyle.outer,
          ),
        ],
      ),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          fillColor: Colors.white.withValues(alpha: 0.4),
          filled: true,
          hintText: S.of(context).HintSearch,
          hintStyle: AppStyles.textStyle13.copyWith(
            fontWeight: FontWeight.w400,
            color: AppColor.hintTextColor,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide.none,
          ),
          prefixIcon: SizedBox(
            height: 20,
            width: 20,
            child: Center(
              child: SvgPicture.asset(
                AssetsImages.searchIcon,
                fit: BoxFit.fill,
              ),
            ),
          ),
          suffixIcon: SizedBox(
            height: 20,
            width: 20,
            child: Center(
              child: SvgPicture.asset(
                AssetsImages.filterIcon,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
