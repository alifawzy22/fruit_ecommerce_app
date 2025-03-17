import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_ecommerce_app/core/utils/exceptions/custom_exception.dart';
import 'package:fruit_ecommerce_app/core/utils/exceptions/firebase_auth_exception.dart';
import 'package:fruit_ecommerce_app/features/auth/data/auth_entities_models/user_model.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/auth_entities/user_entity.dart';
import 'package:fruit_ecommerce_app/generated/l10n.dart';

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
}
