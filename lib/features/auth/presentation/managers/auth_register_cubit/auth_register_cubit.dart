import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/auth_use_cases/create_user_email_and_password_abstract_usecase.dart';
import 'package:fruit_ecommerce_app/features/auth/presentation/managers/auth_register_cubit/auth_register_state.dart';

import '../../../domain/auth_entities/user_entity.dart';

class AuthRegisterCubit extends Cubit<AuthRegisterState> {
  final CreateUserEmailAndPasswordAbstractUsecase
      createUserEmailAndPasswordAbstractUsecase;
  AuthRegisterCubit({required this.createUserEmailAndPasswordAbstractUsecase})
      : super(AuthRegisterInitState());

  Future<void> createUserByEmailandPassword({
    required UserInputEntity userEntity,
  }) async {
    emit(AuthRegisterLoadingState());
    var result = await createUserEmailAndPasswordAbstractUsecase
        .createUserEmailAndPasswordUsecase(
      userInputEntity: userEntity,
    );

    result.fold((failure) {
      emit(AuthRegisterFailureState(errMessage: failure.errMessage));
    }, (userModel) {
      emit(AuthRegisterSuccessState(userModel: userModel));
    });
  }
}
