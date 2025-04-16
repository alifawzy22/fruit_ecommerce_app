import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_ecommerce_app/core/helper_functions/build_snack_bar.dart';
import 'package:fruit_ecommerce_app/core/utils/app_color.dart';
import 'package:fruit_ecommerce_app/core/utils/styles.dart';
import 'package:fruit_ecommerce_app/core/widgets/custom_elevated_button.dart';
import 'package:fruit_ecommerce_app/core/widgets/custom_modal_progress_hud.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/auth_entities/user_entity.dart';
import 'package:fruit_ecommerce_app/features/auth/presentation/managers/auth_register_cubit/auth_register_cubit.dart';
import 'package:fruit_ecommerce_app/features/auth/presentation/managers/auth_register_cubit/auth_register_state.dart';
import 'package:fruit_ecommerce_app/features/auth/presentation/views/widgets/custom_check_box.dart';
import 'package:fruit_ecommerce_app/features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:fruit_ecommerce_app/generated/l10n.dart';

class RegisterViewBody extends StatefulWidget {
  const RegisterViewBody({super.key});

  @override
  State<RegisterViewBody> createState() => _RegisterViewBodyState();
}

class _RegisterViewBodyState extends State<RegisterViewBody> {
  bool isPasswordVisible = false;
  bool isCheckBoxChecked = false;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String fullName = '', email = '', password = '';
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthRegisterCubit, AuthRegisterState>(
      listener: (context, state) {
        if (state is AuthRegisterSuccessState) {
          buildSnackBar(context, S.of(context).AuthRegisterSuccessSnackBar);
          Navigator.pop(context);
        } else if (state is AuthRegisterFailureState) {
          buildSnackBar(context, state.errMessage);
        }
      },
      builder: (context, state) {
        return CustomModalProgressHud(
          isLoading: state is AuthRegisterLoadingState,
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Form(
              key: formKey,
              autovalidateMode: autovalidateMode,
              child: Column(
                children: [
                  SizedBox(height: 24),
                  CustomTextFormField(
                    hintText: S.of(context).AuthFullNameHint,
                    keyBoardType: TextInputType.text,
                    onSaved: (value) {
                      fullName = value!;
                    },
                  ),
                  SizedBox(height: 16),
                  CustomTextFormField(
                    hintText: S.of(context).AuthEmailAddressHint,
                    keyBoardType: TextInputType.emailAddress,
                    onSaved: (value) {
                      email = value!;
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
                      password = value!;
                    },
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          isCheckBoxChecked = !isCheckBoxChecked;
                          setState(() {});
                        },
                        child: CustomCheckBox(
                          isChecked: isCheckBoxChecked,
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: S
                                    .of(context)
                                    .RegisterViewTermsAndConditionsLabel,
                                style: AppStyles.textStyle13,
                              ),
                              TextSpan(
                                text: S
                                    .of(context)
                                    .RegisterViewTermsAndConditions,
                                style: AppStyles.textStyle13
                                    .copyWith(color: Color(0xFF2D9F5D)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: CustomElevatedButton(
                      text: S.of(context).CreateNewAccount,
                      onTap: () async {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                          if (isCheckBoxChecked) {
                            await BlocProvider.of<AuthRegisterCubit>(context)
                                .createUserByEmailandPassword(
                              userEntity: UserInputEntity(
                                userName: fullName,
                                userEmail: email,
                                userPassword: password,
                              ),
                            );
                          } else {
                            // Show snack bar
                            buildSnackBar(
                                context,
                                S
                                    .of(context)
                                    .RegisterViewPleaseAcceptTermsAndConditions);
                          }
                        } else {
                          setState(() {
                            autovalidateMode = AutovalidateMode.always;
                          });
                        }
                      },
                    ),
                  ),
                  SizedBox(height: 26),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: S.of(context).AuthHaveAccount,
                          style: AppStyles.textStyle16.copyWith(
                            fontWeight: FontWeight.w600,
                            color: AppColor.hintTextColor,
                          ),
                        ),
                        TextSpan(text: ' '),
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pop(context);
                            },
                          text: S.of(context).LoginViewTitle,
                          style: AppStyles.textStyle16.copyWith(
                            fontWeight: FontWeight.w600,
                            color: AppColor.primaryColor,
                          ),
                        ),
                      ],
                    ),
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
