import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/app_color.dart' show AppColor;
import '../../../../../core/utils/assets_images.dart';
import '../../../../../core/utils/services/shared_preferences_singelton.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../generated/l10n.dart';
import '../../../../auth/data/auth_entities_models/user_model.dart';

class CustomHomeViewListTile extends StatelessWidget {
  const CustomHomeViewListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        S.of(context).GoodMorning,
        style: AppStyles.textStyle16.copyWith(
          fontWeight: FontWeight.w400,
          color: AppColor.hintTextColor,
        ),
      ),
      subtitle: Text(
        UserModel.fromJson(jsonDecode(Prefs.getString(kUserData))).userName,
        style: AppStyles.textStyle16,
      ),
      trailing: CircleAvatar(
        backgroundColor: AppColor.notificationBackGroundColor,
        child: SvgPicture.asset(
          AssetsImages.notificationIcon,
        ),
      ),
      leading: Image.asset(
        AssetsImages.imageProfile,
      ),
    );
  }
}
