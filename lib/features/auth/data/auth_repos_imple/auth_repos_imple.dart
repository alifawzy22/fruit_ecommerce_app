import 'package:dartz/dartz.dart';
import 'package:fruit_ecommerce_app/core/utils/errors/failure.dart';
import 'package:fruit_ecommerce_app/core/utils/services/firebase_auth_service.dart';
import 'package:fruit_ecommerce_app/features/auth/data/auth_entities_models/user_model.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/auth_entities/user_entity.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/auth_repos/auth_repos.dart';

class AuthReposImple implements AuthRepos {
  final FirebaseAuthService firebaseAuthService;

  AuthReposImple({required this.firebaseAuthService});
  @override
  Future<Either<Failure, UserModel>> createUserWithEmailAndPassword({
    required UserInputEntity userInputEntity,
  }) async {
    try {
      UserModel model =
          await firebaseAuthService.createUserWithEmailAndPassword(
        userInputEntity: userInputEntity,
      );
      return right(model);
    } catch (e) {
      return left(ServerFailure(errMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserModel>> logininWithEmailAndPassword({
    required UserInputEntity userInputEntity,
  }) async {
    try {
      UserModel model = await firebaseAuthService.loginWithEmailAndPassword(
        userInputEntity: userInputEntity,
      );
      return right(model);
    } catch (e) {
      return left(ServerFailure(errMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserModel>> loginWithGoogle() async {
    try {
      UserModel model = await firebaseAuthService.loginWithGoogle();
      return right(model);
    } catch (e) {
      return left(ServerFailure(errMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserModel>> loginWithFacebook() async {
    try {
      UserModel model = await firebaseAuthService.loginWithFacebook();
      return right(model);
    } catch (e) {
      return left(ServerFailure(errMessage: e.toString()));
    }
  }
}
