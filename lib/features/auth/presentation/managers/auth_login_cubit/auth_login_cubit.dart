import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/auth_use_cases/login_with_email_and_password_abstract_usecase.dart';
import 'package:fruit_ecommerce_app/features/auth/presentation/managers/auth_login_cubit/auth_login_state.dart';

class AuthLoginCubit extends Cubit<AuthLoginState> {
  final LoginWithEmailAndPasswordAbstractUsecase
      loginWithEmailAndPasswordAbstractUsecase;
  AuthLoginCubit(this.loginWithEmailAndPasswordAbstractUsecase)
      : super(AuthLoginInitState());

  Future<void> loginWithEmailandPassword(
      {required String userEmail, required String userPassword}) async {
    emit(AuthLoginLoadingState());
    var result = await loginWithEmailAndPasswordAbstractUsecase
        .loginWithEmailAndPasswordAbstractUseCase(
      userEmail: userEmail,
      userPassword: userPassword,
    );
    result.fold((failure) {
      emit(AuthLoginFailureState(errMessage: failure.errMessage));
    }, (model) {
      emit(AuthLoginSuccesstState(userEntity: model));
    });
  }
}
