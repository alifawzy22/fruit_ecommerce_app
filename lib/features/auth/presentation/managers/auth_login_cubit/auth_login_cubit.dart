import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/auth_use_cases/login_with_email_and_password_abstract_usecase.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/auth_use_cases/login_with_facebook_abstract_usecase.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/auth_use_cases/login_with_google_abstract_usecase.dart';
import 'package:fruit_ecommerce_app/features/auth/presentation/managers/auth_login_cubit/auth_login_state.dart';

import '../../../domain/auth_entities/user_entity.dart';

class AuthLoginCubit extends Cubit<AuthLoginState> {
  final LoginWithEmailAndPasswordAbstractUsecase
      loginWithEmailAndPasswordAbstractUsecase;
  final LoginWithGoogleAbstractUsecase loginWithGoogleAbstractUsecase;
  final LoginWithFacebookAbstractUsecase loginWithFacebookAbstractUsecase;
  AuthLoginCubit(
      this.loginWithEmailAndPasswordAbstractUsecase,
      this.loginWithGoogleAbstractUsecase,
      this.loginWithFacebookAbstractUsecase)
      : super(AuthLoginInitState());

  Future<void> loginWithEmailandPassword(
      {required UserInputEntity userInputEntity}) async {
    emit(AuthLoginLoadingState());
    var result = await loginWithEmailAndPasswordAbstractUsecase
        .loginWithEmailAndPasswordAbstractUseCase(
      userInputEntity: userInputEntity,
    );
    result.fold((failure) {
      emit(AuthLoginFailureState(errMessage: failure.errMessage));
    }, (model) {
      emit(AuthLoginSuccesstState(userModel: model));
    });
  }

  Future<void> loginWithGoogle() async {
    emit(AuthLoginLoadingState());

    var result =
        await loginWithGoogleAbstractUsecase.loginWithGoogleAbstractUseCase();
    result.fold((failure) {
      emit(AuthLoginFailureState(errMessage: failure.errMessage));
    }, (model) {
      emit(AuthLoginSuccesstState(userModel: model));
    });
  }

  Future<void> loginWithfacebook() async {
    var result = await loginWithFacebookAbstractUsecase
        .loginWithFacebookAbstractUseCase();
    result.fold((failure) {
      emit(AuthLoginFailureState(errMessage: failure.errMessage));
    }, (model) {
      emit(AuthLoginSuccesstState(userModel: model));
    });
  }
}
