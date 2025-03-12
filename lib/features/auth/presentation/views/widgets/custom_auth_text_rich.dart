import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/core/utils/app_color.dart';
import 'package:fruit_ecommerce_app/core/utils/styles.dart';
import 'package:fruit_ecommerce_app/features/auth/presentation/views/register_view.dart';
import 'package:fruit_ecommerce_app/generated/l10n.dart';

class CustomAuthTextRich extends StatelessWidget {
  const CustomAuthTextRich({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: S.of(context).AuthDontHaveAccount,
            style: AppStyles.textStyle16.copyWith(
              color: Color(0xFF949D9E),
              fontWeight: FontWeight.w600,
            ),
          ),
          TextSpan(text: ' '),
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pushNamed(
                  context,
                  RegisterView.routeName,
                );
              },
            text: S.of(context).AuthRegisterNow,
            style: AppStyles.textStyle16.copyWith(
              color: AppColor.primaryColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
