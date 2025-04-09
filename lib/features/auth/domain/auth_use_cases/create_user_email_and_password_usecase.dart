import 'package:dartz/dartz.dart';
import 'package:fruit_ecommerce_app/core/utils/errors/failure.dart';
import 'package:fruit_ecommerce_app/features/auth/data/auth_entities_models/user_model.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/auth_entities/user_entity.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/auth_use_cases/create_user_email_and_password_abstract_usecase.dart';

import '../auth_repos/auth_repos.dart';

class CreateUserEmailAndPasswordUsecase
    implements CreateUserEmailAndPasswordAbstractUsecase {
  final AuthRepos authRepos;

  CreateUserEmailAndPasswordUsecase({required this.authRepos});
  @override
  Future<Either<Failure, UserModel>> createUserEmailAndPasswordUsecase({
    required UserInputEntity userInputEntity,
  }) async {
    var result = await authRepos.createUserWithEmailAndPassword(
      userInputEntity: userInputEntity,
    );

    return result.fold((failure) {
      return left(failure);
    }, (model) {
      return right(model);
    });
  }
}
