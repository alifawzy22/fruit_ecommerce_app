import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_ecommerce_app/constants.dart';
import 'package:fruit_ecommerce_app/core/utils/app_color.dart';
import 'package:fruit_ecommerce_app/core/utils/assets_images.dart';
import 'package:fruit_ecommerce_app/core/utils/services/shared_preferences_singelton.dart';
import 'package:fruit_ecommerce_app/features/auth/data/auth_entities_models/user_model.dart';

import '../../../../../generated/l10n.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 16,
          ),
        ),
        SliverToBoxAdapter(
          child: ListTile(
            title: Text(
              S.of(context).GoodMorning,
            ),
            subtitle: Text(
              UserModel.fromJson(jsonDecode(Prefs.getString(kUserData)))
                  .userName,
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
          ),
        ),
      ],
    );
  }
}
