import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/auth_entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    required super.userName,
    required super.userEmail,
  });

  factory UserModel.fromFireBase(User user) => UserModel(
        userName: user.displayName ?? '',
        userEmail: user.email!,
      );
}
