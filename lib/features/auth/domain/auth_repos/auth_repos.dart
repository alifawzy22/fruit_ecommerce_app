import 'package:dartz/dartz.dart';
import 'package:fruit_ecommerce_app/core/utils/errors/failure.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/auth_entities/user_entity.dart';

abstract class AuthRepos {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({
    required UserEntity user,
    required String userPassword,
  });

  Future<Either<Failure, UserEntity>> logininWithEmailAndPassword(
      {required String userEmail, required String userPassword});

  Future<Either<Failure, UserEntity>> loginWithGoogle();
  Future<Either<Failure, UserEntity>> loginWithFacebook();
}
