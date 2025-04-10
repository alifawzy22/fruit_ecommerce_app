import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_ecommerce_app/core/utils/errors/failure.dart';
import 'package:fruit_ecommerce_app/core/utils/services/firebase_auth_service.dart';
import 'package:fruit_ecommerce_app/features/auth/data/auth_entities_models/user_model.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/auth_entities/user_entity.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/auth_repos/auth_repos.dart';

import '../../../../core/utils/exceptions/firebase_auth_exception.dart';
import '../../../../generated/l10n.dart';

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

      await addUser(
        usermodel: UserModel(
          userName: userInputEntity.userName,
          userEmail: userInputEntity.userEmail,
          userID: model.userID,
        ),
      );
      return right(model);
    } catch (e) {
      return left(ServerFailure(errMessage: e.toString()));
    }
  }

  @override
  Future<void> addUser({required UserModel usermodel}) async {
    try {
      await firebaseAuthService.addUser(usermodel: usermodel);
    } on FirebaseAuthException catch (e) {
      // Remove user account if it was created
      await firebaseAuthService.deleteUserAccount();
      throw Exception(
        CustomFireBaseAuthException.throwFireBaseError(code: e.code),
      ).toString().replaceAll('Exception: ', '');
    } catch (e) {
      // Remove user account if it was created
      await firebaseAuthService.deleteUserAccount();
      throw Exception(S.current.FireBaseUnknownError)
          .toString()
          .replaceAll('Exception: ', '');
    }
  }

  @override
  Future<void> deleteUser() async {
    await firebaseAuthService.deleteUser();
  }

  @override
  Future<UserModel> getUser() async {
    return await firebaseAuthService.getUser();
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
