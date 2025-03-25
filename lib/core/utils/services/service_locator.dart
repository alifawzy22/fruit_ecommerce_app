import 'package:fruit_ecommerce_app/core/utils/localization/localization_cubit.dart';
import 'package:fruit_ecommerce_app/core/utils/services/firebase_auth_service.dart';
import 'package:fruit_ecommerce_app/features/auth/data/auth_repos_imple/auth_repos_imple.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/auth_repos/auth_repos.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/auth_use_cases/create_user_email_and_password_abstract_usecase.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/auth_use_cases/create_user_email_and_password_usecase.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/auth_use_cases/login_with_email_and_password_abstract_usecase.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/auth_use_cases/login_with_email_and_password_usecase.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/auth_use_cases/login_with_facebook_abstract_usecase.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/auth_use_cases/login_with_facebook_usercase.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/auth_use_cases/login_with_google_abstract_usecase.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/auth_use_cases/login_with_google_usecase.dart';
import 'package:get_it/get_it.dart';

final GetIt serviceLocator = GetIt.instance;

void setUpServiceLocator() {
  serviceLocator
      .registerLazySingleton<LocalizationCubit>(() => LocalizationCubit());
  serviceLocator.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  serviceLocator.registerSingleton<AuthRepos>(
    AuthReposImple(
      firebaseAuthService: serviceLocator<FirebaseAuthService>(),
    ),
  );

  serviceLocator.registerSingleton<CreateUserEmailAndPasswordAbstractUsecase>(
    CreateUserEmailAndPasswordUsecase(
      authRepos: serviceLocator<AuthRepos>(),
    ),
  );
  serviceLocator.registerSingleton<LoginWithEmailAndPasswordAbstractUsecase>(
      LoginWithEmailAndPasswordUsecase(authRepos: serviceLocator<AuthRepos>()));
  serviceLocator.registerSingleton<LoginWithGoogleAbstractUsecase>(
      LoginWithGoogleUsecase(authRepos: serviceLocator<AuthRepos>()));

  serviceLocator.registerSingleton<LoginWithFacebookAbstractUsecase>(
      LoginWithFacebookUsercase(authRepos: serviceLocator<AuthRepos>()));
}
