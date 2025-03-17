import 'package:fruit_ecommerce_app/features/auth/domain/auth_entities/user_entity.dart';

abstract class AuthRegisterState {}

class AuthRegisterInitState extends AuthRegisterState {}

class AuthRegisterLoadingState extends AuthRegisterState {}

class AuthRegisterSuccessState extends AuthRegisterState {
  final UserEntity userEntity;

  AuthRegisterSuccessState({required this.userEntity});
}

class AuthRegisterFailureState extends AuthRegisterState {
  final String errMessage;

  AuthRegisterFailureState({required this.errMessage});
}
