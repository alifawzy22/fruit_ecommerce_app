import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_ecommerce_app/core/helper_functions/build_app_bar.dart';
import 'package:fruit_ecommerce_app/core/utils/app_routes.dart';
import 'package:fruit_ecommerce_app/core/utils/localization/localization_cubit.dart';
import 'package:fruit_ecommerce_app/core/utils/services/service_locator.dart';
import 'package:fruit_ecommerce_app/features/auth/presentation/managers/auth_register_cubit/auth_register_cubit.dart';
import 'package:fruit_ecommerce_app/generated/l10n.dart';

import '../../domain/auth_use_cases/create_user_email_and_password_abstract_usecase.dart';
import 'widgets/register_view_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});
  static const routeName = AppRoutes.registerView;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthRegisterCubit(
          createUserEmailAndPasswordAbstractUsecase:
              serviceLocator<CreateUserEmailAndPasswordAbstractUsecase>()),
      child: Scaffold(
        appBar: buildAppBar(
            title: S.of(context).RegisterViewTitle,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
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
        body: RegisterViewBody(),
      ),
    );
  }
}
