import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_cloud_firestore/firebase_cloud_firestore.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart'
    show FacebookAuth, LoginResult;
import 'package:fruit_ecommerce_app/core/utils/end_points_names.dart';
import 'package:fruit_ecommerce_app/core/utils/exceptions/firebase_auth_exception.dart';
import 'package:fruit_ecommerce_app/features/auth/data/auth_entities_models/user_model.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/auth_entities/user_entity.dart';
import 'package:fruit_ecommerce_app/generated/l10n.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthService {
  Future<void> deleteUserAccount() async {
    try {
      User? user = FirebaseAuth.instance.currentUser;

      if (user != null) {
        await user.delete();
      }
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

  Future<UserModel> createUserWithEmailAndPassword({
    required UserInputEntity userInputEntity,
  }) async {
    try {
      final UserCredential credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: userInputEntity.userEmail,
        password: userInputEntity.userPassword,
      );
      return UserModel.fromFireStore(credential.user!);
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

  Future<void> addUser({required UserModel usermodel}) async {
    await FirebaseFirestore.instance
        .collection(EndPointsNames.userCollection)
        .doc(
          usermodel.userID,
        )
        .set(
          usermodel.toFireStore(),
        );
  }

  Future<UserModel> getUser() async {
    try {
      final DocumentSnapshot<Map<String, dynamic>> userDocument =
          await FirebaseFirestore.instance
              .collection(EndPointsNames.userCollection)
              .doc(
                FirebaseAuth.instance.currentUser!.uid,
              )
              .get();

      if (userDocument.exists) {
        return UserModel(
          userName: '',
          userEmail: '',
          userID: '',
        );
      } else {
        throw Exception(S.current.FireBaseUserNotFound);
      }
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

  Future<void> deleteUser() async {
    try {
      await FirebaseFirestore.instance
          .collection(EndPointsNames.userCollection)
          .doc(
            FirebaseAuth.instance.currentUser!.uid,
          )
          .delete();
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

  Future<UserModel> loginWithEmailAndPassword({
    required UserInputEntity userInputEntity,
  }) async {
    try {
      final UserCredential credential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: userInputEntity.userEmail,
        password: userInputEntity.userPassword,
      );
      return UserModel.fromFireStore(credential.user!);
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

  Future<UserModel> loginWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      return UserModel.fromFireStore(
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

  Future<UserModel> loginWithFacebook() async {
    try {
      final LoginResult loginResult = await FacebookAuth.instance.login();

      final OAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(loginResult.accessToken!.tokenString);

      return UserModel.fromFireStore((await FirebaseAuth.instance
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

  Future<void> logOutWithFacebook() async {
    await FirebaseAuth.instance.signOut();
    await FacebookAuth.instance.logOut();
  }

  Future<void> resetPassword({
    required String userEmail,
  }) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: userEmail);
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

  Future<void> updateUserName({
    required String userName,
  }) async {
    try {
      await FirebaseAuth.instance.currentUser!.updateDisplayName(userName);
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

  Future<void> updateUserEmail({
    required String userEmail,
  }) async {
    try {
      await FirebaseAuth.instance.currentUser!
          .verifyBeforeUpdateEmail(userEmail);
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

  Future<void> updateUserPassword({
    required String userPassword,
  }) async {
    try {
      await FirebaseAuth.instance.currentUser!.updatePassword(userPassword);
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
