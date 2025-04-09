import 'package:fruit_ecommerce_app/features/auth/domain/auth_entities/user_entity.dart';

class UserInputModel extends UserInputEntity {
  UserInputModel({
    required super.userName,
    required super.userEmail,
    required super.userPassword,
  });
}
