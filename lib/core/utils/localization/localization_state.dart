import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/constants.dart';

abstract class LocalizationState {
  final Locale locale;
  LocalizationState(this.locale);
}

class LocaleInitial extends LocalizationState {
  LocaleInitial() : super(const Locale(kArabicLocale));
}

class LocaleChanged extends LocalizationState {
  LocaleChanged(super.locale);
}
