
// LocalizationDelegate.dart
import 'package:flutter/material.dart';

class LocalizationDelegate extends LocalizationsDelegate<MaterialLocalizations> {
  const LocalizationDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'es'].contains(locale.languageCode);

  @override
  Future<MaterialLocalizations> load(Locale locale) async {
    // You can load your own localization files here, for example:
    // return MyCustomLocalizations(locale);
    return const DefaultMaterialLocalizations();
  }

  @override
  bool shouldReload(LocalizationsDelegate<MaterialLocalizations> old) => false;

}