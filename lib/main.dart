import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fruit_ecommerce_app/core/helper_functions/build_theme_data.dart';
import 'package:fruit_ecommerce_app/core/helper_functions/on_generate_routes.dart';
import 'package:fruit_ecommerce_app/core/utils/localization/localization_cubit.dart';
import 'package:fruit_ecommerce_app/core/utils/localization/localization_state.dart';
import 'package:fruit_ecommerce_app/core/utils/services/service_locator.dart';

import 'core/utils/services/shared_preferences_singelton.dart';
import 'features/splash/presentation/views/splash_view.dart';
import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Prefs.init();
  setUpServiceLocator();
  runApp(const FruitsHub());
}

class FruitsHub extends StatelessWidget {
  const FruitsHub({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          serviceLocator<LocalizationCubit>()..loadSavedLocale(),
      child: BlocBuilder<LocalizationCubit, LocalizationState>(
        builder: (context, state) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: buildThemeData(),
          localizationsDelegates: [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          locale: state.locale,
          onGenerateRoute: onGenerateRoutes,
          initialRoute: SplashView.routeName,
        ),
      ),
    );
  }
}
