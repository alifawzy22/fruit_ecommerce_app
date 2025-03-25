import 'package:dartz/dartz.dart';
import 'package:fruit_ecommerce_app/core/utils/errors/failure.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/auth_entities/user_entity.dart';

abstract class LoginWithFacebookAbstractUsecase {
  Future<Either<Failure, UserEntity>> loginWithFacebookAbstractUseCase();
}
