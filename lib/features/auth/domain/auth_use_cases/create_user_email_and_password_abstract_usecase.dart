import 'package:dartz/dartz.dart';
import 'package:fruit_ecommerce_app/features/auth/data/auth_entities_models/user_model.dart';

import '../../../../core/utils/errors/failure.dart';
import '../auth_entities/user_entity.dart';

abstract class CreateUserEmailAndPasswordAbstractUsecase {
  Future<Either<Failure, UserModel>> createUserEmailAndPasswordUsecase({
    required UserInputEntity userInputEntity,
  });
}
