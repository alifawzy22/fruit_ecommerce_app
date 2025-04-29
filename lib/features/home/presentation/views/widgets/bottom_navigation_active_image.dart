import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styles.dart';
import '../../../domain/home_entity/bottom_navigation_entity.dart';

class BottomNavigationActiveImage extends StatelessWidget {
  final BottomNavigationEntity bottomNavigationEntity;
  const BottomNavigationActiveImage(
      {super.key, required this.bottomNavigationEntity});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: AppColor.homeViewActiveBGColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: AppColor.primaryColor,
            radius: 15,
            child: SvgPicture.asset(
              bottomNavigationEntity.activeImage,
              width: 16,
              height: 16,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(width: 4),
          Expanded(
            child: Text(
              bottomNavigationEntity.label,
              style: AppStyles.textStyle11,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
