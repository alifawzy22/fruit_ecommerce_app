import 'package:dartz/dartz.dart';
import 'package:fruit_ecommerce_app/core/utils/errors/failure.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/auth_entities/user_entity.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/auth_use_cases/create_user_email_and_password_abstract_usecase.dart';

import '../auth_repos/auth_repos.dart';

class CreateUserEmailAndPasswordUsecase
    implements CreateUserEmailAndPasswordAbstractUsecase {
  final AuthRepos authRepos;

  CreateUserEmailAndPasswordUsecase({required this.authRepos});
  @override
  Future<Either<Failure, UserEntity>> createUserEmailAndPasswordUsecase(
      {required UserEntity userEntity, required String userPassword}) async {
    var result = await authRepos.createUserWithEmailAndPassword(
        user: userEntity, userPassword: userPassword);

    return result.fold((failure) {
      return left(failure);
    }, (model) {
      return right(model);
    });
  }
}
