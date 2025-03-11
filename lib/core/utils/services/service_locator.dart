import 'package:fruit_ecommerce_app/core/utils/localization/localization_cubit.dart';
import 'package:get_it/get_it.dart';

final GetIt serviceLocator = GetIt.instance;

void setUpServiceLocator() {
  serviceLocator
      .registerLazySingleton<LocalizationCubit>(() => LocalizationCubit());
}
