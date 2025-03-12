import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_ecommerce_app/core/utils/app_color.dart';
import 'package:fruit_ecommerce_app/core/utils/assets_images.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({super.key, required this.isChecked});
  final bool isChecked;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: 24,
      height: 24,
      duration: Duration(milliseconds: 150),
      decoration: BoxDecoration(
        color: isChecked ? AppColor.primaryColor : Colors.white,
        border: isChecked
            ? Border()
            : Border.all(
                color: Color(0xFFDDDFDF),
              ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: isChecked
          ? Padding(
              padding: const EdgeInsets.all(4),
              child: SvgPicture.asset(
                AssetsImages.checkIcon,
              ),
            )
          : SizedBox(),
    );
  }
}
