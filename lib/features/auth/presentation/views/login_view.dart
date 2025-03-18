import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_ecommerce_app/core/helper_functions/build_app_bar.dart';
import 'package:fruit_ecommerce_app/core/utils/app_routes.dart';
import 'package:fruit_ecommerce_app/core/utils/localization/localization_cubit.dart';
import 'package:fruit_ecommerce_app/core/utils/services/service_locator.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/auth_use_cases/login_with_email_and_password_abstract_usecase.dart';
import 'package:fruit_ecommerce_app/features/auth/presentation/managers/auth_login_cubit/auth_login_cubit.dart';
import 'package:fruit_ecommerce_app/generated/l10n.dart';

import 'widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  static const String routeName = AppRoutes.loginView;
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthLoginCubit(
          serviceLocator<LoginWithEmailAndPasswordAbstractUsecase>()),
      child: Scaffold(
        appBar: buildAppBar(
            title: S.of(context).LoginViewTitle,
            leading: IconButton(
                onPressed: () {
                  //Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios_new,
                )),
            widgetsList: [
              IconButton(
                onPressed: () {
                  serviceLocator<LocalizationCubit>().toggleLanguage();
                },
                icon: Icon(
                  Icons.language,
                ),
              ),
            ]),
        body: LoginViewBody(),
      ),
    );
  }
}
