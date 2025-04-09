import 'package:dartz/dartz.dart';
import 'package:fruit_ecommerce_app/core/utils/errors/failure.dart';
import 'package:fruit_ecommerce_app/features/auth/data/auth_entities_models/user_model.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/auth_entities/user_entity.dart';

abstract class AuthRepos {
  Future<Either<Failure, UserModel>> createUserWithEmailAndPassword({
    required UserInputEntity userInputEntity,
  });

  Future<Either<Failure, UserModel>> logininWithEmailAndPassword(
      {required UserInputEntity userInputEntity});

  Future<Either<Failure, UserModel>> loginWithGoogle();
  Future<Either<Failure, UserModel>> loginWithFacebook();
}
