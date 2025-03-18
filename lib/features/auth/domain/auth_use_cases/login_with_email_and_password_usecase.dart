import 'package:dartz/dartz.dart';
import 'package:fruit_ecommerce_app/core/utils/errors/failure.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/auth_entities/user_entity.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/auth_repos/auth_repos.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/auth_use_cases/login_with_email_and_password_abstract_usecase.dart';

class LoginWithEmailAndPasswordUsecase
    implements LoginWithEmailAndPasswordAbstractUsecase {
  final AuthRepos authRepos;

  LoginWithEmailAndPasswordUsecase({required this.authRepos});
  @override
  Future<Either<Failure, UserEntity>> loginWithEmailAndPasswordAbstractUseCase(
      {required String userEmail, required String userPassword}) async {
    var result = await authRepos.logininWithEmailAndPassword(
        userEmail: userEmail, userPassword: userPassword);

    return result.fold((failure) {
      return left(ServerFailure(errMessage: failure.errMessage));
    }, (model) {
      return right(model);
    });
  }
}
