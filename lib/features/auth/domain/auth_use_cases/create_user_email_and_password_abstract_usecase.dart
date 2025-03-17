import 'package:dartz/dartz.dart';

import '../../../../core/utils/errors/failure.dart';
import '../auth_entities/user_entity.dart';

abstract class CreateUserEmailAndPasswordAbstractUsecase {
  Future<Either<Failure, UserEntity>> createUserEmailAndPasswordUsecase({
    required UserEntity userEntity,
    required String userPassword,
  });
}
