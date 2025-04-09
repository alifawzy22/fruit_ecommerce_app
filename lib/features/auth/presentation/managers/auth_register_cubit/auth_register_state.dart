import 'package:fruit_ecommerce_app/features/auth/data/auth_entities_models/user_model.dart';

abstract class AuthRegisterState {}

class AuthRegisterInitState extends AuthRegisterState {}

class AuthRegisterLoadingState extends AuthRegisterState {}

class AuthRegisterSuccessState extends AuthRegisterState {
  final UserModel userModel;

  AuthRegisterSuccessState({required this.userModel});
}

class AuthRegisterFailureState extends AuthRegisterState {
  final String errMessage;

  AuthRegisterFailureState({required this.errMessage});
}
