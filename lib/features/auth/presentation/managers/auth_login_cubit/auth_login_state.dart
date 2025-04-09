import 'package:fruit_ecommerce_app/features/auth/data/auth_entities_models/user_model.dart';

abstract class AuthLoginState {}

class AuthLoginInitState extends AuthLoginState {}

class AuthLoginLoadingState extends AuthLoginState {}

class AuthLoginSuccesstState extends AuthLoginState {
  final UserModel userModel;

  AuthLoginSuccesstState({required this.userModel});
}

class AuthLoginFailureState extends AuthLoginState {
  final String errMessage;

  AuthLoginFailureState({required this.errMessage});
}
