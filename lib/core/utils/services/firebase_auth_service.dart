import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart'
    show FacebookAuth, LoginResult;
import 'package:fruit_ecommerce_app/core/utils/exceptions/firebase_auth_exception.dart';
import 'package:fruit_ecommerce_app/features/auth/data/auth_entities_models/user_model.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/auth_entities/user_entity.dart';
import 'package:fruit_ecommerce_app/generated/l10n.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthService {
  Future<UserEntity> createUserWithEmailAndPassword({
    required String userEmail,
    required String userPassword,
  }) async {
    try {
      final UserCredential credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: userEmail,
        password: userPassword,
      );
      return UserModel.fromFireBase(credential.user!);
    } on FirebaseAuthException catch (e) {
      throw Exception(
        CustomFireBaseAuthException.throwFireBaseError(code: e.code),
      ).toString().replaceAll('Exception: ', '');
    } catch (e) {
      throw Exception(S.current.FireBaseUnknownError)
          .toString()
          .replaceAll('Exception: ', '');
    }
  }

  Future<UserEntity> loginWithEmailAndPassword({
    required String userEmail,
    required String userPassword,
  }) async {
    try {
      final UserCredential credential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: userEmail,
        password: userPassword,
      );
      return UserModel.fromFireBase(credential.user!);
    } on FirebaseAuthException catch (e) {
      throw Exception(
        CustomFireBaseAuthException.throwFireBaseError(code: e.code),
      ).toString().replaceAll('Exception: ', '');
    } catch (e) {
      throw Exception(S.current.FireBaseUnknownError)
          .toString()
          .replaceAll('Exception: ', '');
    }
  }

  Future<UserEntity> loginWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      return UserModel.fromFireBase(
          (await FirebaseAuth.instance.signInWithCredential(credential)).user!);
    } on FirebaseAuthException catch (e) {
      throw Exception(
        CustomFireBaseAuthException.throwFireBaseError(code: e.code),
      ).toString().replaceAll('Exception: ', '');
    } catch (e) {
      throw Exception(S.current.FireBaseUnknownError)
          .toString()
          .replaceAll('Exception: ', '');
    }
  }

  Future<void> logOutWithGoogle() async {
    await FirebaseAuth.instance.signOut();
    await GoogleSignIn().signOut();
  }

  Future<UserEntity> loginWithFacebook() async {
    try {
      final LoginResult loginResult = await FacebookAuth.instance.login();

      final OAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(loginResult.accessToken!.tokenString);

      return UserModel.fromFireBase((await FirebaseAuth.instance
              .signInWithCredential(facebookAuthCredential))
          .user!);
    } on FirebaseAuthException catch (e) {
      throw Exception(
        CustomFireBaseAuthException.throwFireBaseError(code: e.code),
      ).toString().replaceAll('Exception: ', '');
    } catch (e) {
      throw Exception(S.current.FireBaseUnknownError)
          .toString()
          .replaceAll('Exception: ', '');
    }
  }
}
