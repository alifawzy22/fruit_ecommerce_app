import 'package:dartz/dartz.dart';
import 'package:fruit_ecommerce_app/core/utils/errors/failure.dart';
import 'package:fruit_ecommerce_app/features/auth/data/auth_entities_models/user_model.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/auth_entities/user_entity.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/auth_repos/auth_repos.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/auth_use_cases/login_with_email_and_password_abstract_usecase.dart';

class LoginWithEmailAndPasswordUsecase
    implements LoginWithEmailAndPasswordAbstractUsecase {
  final AuthRepos authRepos;

  LoginWithEmailAndPasswordUsecase({required this.authRepos});
  @override
  Future<Either<Failure, UserModel>> loginWithEmailAndPasswordAbstractUseCase(
      {required UserInputEntity userInputEntity}) async {
    var result = await authRepos.logininWithEmailAndPassword(
        userInputEntity: userInputEntity);

    return result.fold((failure) {
      return left(ServerFailure(errMessage: failure.errMessage));
    }, (model) {
      return right(model);
    });
  }
}
