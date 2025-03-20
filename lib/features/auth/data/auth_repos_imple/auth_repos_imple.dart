import 'package:dartz/dartz.dart';
import 'package:fruit_ecommerce_app/core/utils/errors/failure.dart';
import 'package:fruit_ecommerce_app/core/utils/services/firebase_auth_service.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/auth_entities/user_entity.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/auth_repos/auth_repos.dart';

class AuthReposImple implements AuthRepos {
  final FirebaseAuthService firebaseAuthService;

  AuthReposImple({required this.firebaseAuthService});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({
    required UserEntity user,
    required String userPassword,
  }) async {
    try {
      UserEntity model =
          await firebaseAuthService.createUserWithEmailAndPassword(
        userEmail: user.userEmail,
        userPassword: userPassword,
      );
      return right(model);
    } catch (e) {
      return left(ServerFailure(errMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> logininWithEmailAndPassword(
      {required String userEmail, required String userPassword}) async {
    try {
      UserEntity model = await firebaseAuthService.loginWithEmailAndPassword(
          userEmail: userEmail, userPassword: userPassword);
      return right(model);
    } catch (e) {
      return left(ServerFailure(errMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> loginWithGoogle() async {
    try {
      UserEntity model = await firebaseAuthService.loginWithGoogle();
      return right(model);
    } catch (e) {
      return left(ServerFailure(errMessage: e.toString()));
    }
  }
}
