import 'package:dartz/dartz.dart';
import 'package:fruit_ecommerce_app/core/utils/errors/failure.dart';
import 'package:fruit_ecommerce_app/features/auth/data/auth_entities_models/user_model.dart';

abstract class LoginWithFacebookAbstractUsecase {
  Future<Either<Failure, UserModel>> loginWithFacebookAbstractUseCase();
}
