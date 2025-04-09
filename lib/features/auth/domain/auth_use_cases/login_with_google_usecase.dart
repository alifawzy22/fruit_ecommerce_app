import 'package:dartz/dartz.dart';
import 'package:fruit_ecommerce_app/core/utils/errors/failure.dart';
import 'package:fruit_ecommerce_app/features/auth/data/auth_entities_models/user_model.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/auth_repos/auth_repos.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/auth_use_cases/login_with_google_abstract_usecase.dart';

class LoginWithGoogleUsecase implements LoginWithGoogleAbstractUsecase {
  final AuthRepos authRepos;

  LoginWithGoogleUsecase({required this.authRepos});
  @override
  Future<Either<Failure, UserModel>> loginWithGoogleAbstractUseCase() async {
    var result = await authRepos.loginWithGoogle();

    return result.fold((failure) {
      return left(ServerFailure(errMessage: failure.errMessage));
    }, (model) {
      return right(model);
    });
  }
}
