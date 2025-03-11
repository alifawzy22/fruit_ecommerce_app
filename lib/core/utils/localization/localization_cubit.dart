import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_ecommerce_app/constants.dart';
import 'package:fruit_ecommerce_app/core/utils/localization/localization_state.dart';
import 'package:fruit_ecommerce_app/core/utils/services/shared_preferences_singelton.dart';

class LocalizationCubit extends Cubit<LocalizationState> {
  LocalizationCubit() : super(LocaleInitial());
  Future<void> toggleLanguage() async {
    final newLocale = state.locale.languageCode == kArabicLocale
        ? const Locale(kEnglishLocale)
        : const Locale(kArabicLocale);

    await Prefs.setString(kAppLocale, newLocale.languageCode);

    emit(LocaleChanged(newLocale));
  }

  Future<void> loadSavedLocale() async {
    final languageCode = Prefs.getString(kAppLocale);

    emit(
      LocaleChanged(
          Locale(languageCode.isNotEmpty ? languageCode : kArabicLocale)),
    );
  }
}
