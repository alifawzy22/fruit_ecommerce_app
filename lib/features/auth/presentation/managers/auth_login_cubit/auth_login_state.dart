import 'package:fruit_ecommerce_app/features/auth/domain/auth_entities/user_entity.dart';

abstract class AuthLoginState {}

class AuthLoginInitState extends AuthLoginState {}

class AuthLoginLoadingState extends AuthLoginState {}

class AuthLoginSuccesstState extends AuthLoginState {
  final UserEntity userEntity;

  AuthLoginSuccesstState({required this.userEntity});
}

class AuthLoginFailureState extends AuthLoginState {
  final String errMessage;

  AuthLoginFailureState({required this.errMessage});
}
