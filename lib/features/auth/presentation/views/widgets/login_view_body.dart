import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_ecommerce_app/core/helper_functions/build_snack_bar.dart';
import 'package:fruit_ecommerce_app/core/utils/assets_images.dart';
import 'package:fruit_ecommerce_app/core/utils/styles.dart';
import 'package:fruit_ecommerce_app/core/widgets/custom_elevated_button.dart';
import 'package:fruit_ecommerce_app/core/widgets/custom_modal_progress_hud.dart';
import 'package:fruit_ecommerce_app/features/auth/presentation/managers/auth_login_cubit/auth_login_cubit.dart';
import 'package:fruit_ecommerce_app/features/auth/presentation/managers/auth_login_cubit/auth_login_state.dart';
import 'package:fruit_ecommerce_app/features/auth/presentation/views/widgets/custom_auth_text_rich.dart';
import 'package:fruit_ecommerce_app/features/auth/presentation/views/widgets/custom_or_row_divider.dart';
import 'package:fruit_ecommerce_app/features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:fruit_ecommerce_app/generated/l10n.dart';

import 'custom_auth_list_tile.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  bool isPasswordVisible = false;
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String userEmail, userPassword;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthLoginCubit, AuthLoginState>(
      listener: (context, state) {
        if (state is AuthLoginSuccesstState) {
          buildSnackBar(context, S.of(context).AuthLoginSuccessSnackBar);
        } else if (state is AuthLoginFailureState) {
          buildSnackBar(context, state.errMessage);
        }
      },
      builder: (context, state) {
        return CustomModalProgressHud(
          isLoading: state is AuthLoginLoadingState,
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Form(
              key: formKey,
              autovalidateMode: autovalidateMode,
              child: Column(
                children: [
                  SizedBox(height: 24),
                  CustomTextFormField(
                    hintText: S.of(context).AuthEmailAddressHint,
                    keyBoardType: TextInputType.emailAddress,
                    onSaved: (value) {
                      userEmail = value!;
                    },
                  ),
                  SizedBox(height: 16),
                  CustomTextFormField(
                    hintText: S.of(context).AuthPasswordHint,
                    keyBoardType: TextInputType.visiblePassword,
                    obsecureText: !isPasswordVisible,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isPasswordVisible = !isPasswordVisible;
                        });
                      },
                      icon: Icon(
                        isPasswordVisible
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                    ),
                    onSaved: (value) {
                      userPassword = value!;
                    },
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          S.of(context).AuthForgetPassword,
                          style: AppStyles.textStyle13.copyWith(
                            color: Color(0xFF2D9F5D),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 33),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: CustomElevatedButton(
                      text: S.of(context).LoginViewTitle,
                      onTap: () async {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                          await BlocProvider.of<AuthLoginCubit>(context)
                              .loginWithEmailandPassword(
                            userEmail: userEmail,
                            userPassword: userPassword,
                          );
                        } else {
                          autovalidateMode = AutovalidateMode.always;
                          setState(() {});
                        }
                      },
                    ),
                  ),
                  SizedBox(height: 33),
                  CustomAuthTextRich(),
                  SizedBox(height: 33),
                  CustomOrRowDivider(),
                  SizedBox(height: 21),
                  CustomAuthListTile(
                    provider: S.of(context).Google,
                    imageIcon: AssetsImages.goolgeIcon,
                  ),
                  SizedBox(height: 16),
                  CustomAuthListTile(
                    provider: S.of(context).Apple,
                    imageIcon: AssetsImages.appleIcon,
                  ),
                  SizedBox(height: 16),
                  CustomAuthListTile(
                    provider: S.of(context).Facebook,
                    imageIcon: AssetsImages.facebookIcon,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
