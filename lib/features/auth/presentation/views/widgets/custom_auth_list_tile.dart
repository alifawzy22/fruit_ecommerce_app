import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_ecommerce_app/core/utils/app_color.dart';
import 'package:fruit_ecommerce_app/generated/l10n.dart';

class CustomAuthListTile extends StatelessWidget {
  const CustomAuthListTile(
      {super.key, required this.provider, required this.imageIcon});
  final String provider;
  final String imageIcon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      titleAlignment: ListTileTitleAlignment.center,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: AppColor.textFormFieldBorderColor),
        borderRadius: BorderRadius.circular(16),
      ),
      title: Text(
        S.of(context).LoginWithProvider(provider),
        textAlign: TextAlign.center,
      ),
      leading: SvgPicture.asset(imageIcon),
    );
  }
}
