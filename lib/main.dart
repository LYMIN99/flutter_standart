import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myapp/app.dart';

void main() {
   // Ensure that widgets are initialized before running the app
  WidgetsFlutterBinding.ensureInitialized();

  // Perform any required initializations (like service setup or configuration)
  // await setupDependencyInjection();

   // Check authentication status or load preferences before starting the app
  // final authenticationService = locator<AuthenticationService>();
  // final isAuthenticated = await authenticationService.checkAuthStatus();

  // // Load user preferences
  // final preferencesService = locator<PreferencesService>();
  // final preferences = await preferencesService.loadPreferences();

  runZonedGuarded(() {
    runApp(const MyApp());
  }, (error, stackTrace) {
    print('Caught Dart Error: $error');
    // You can log the error or report it to an analytics service
  });

  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.dumpErrorToConsole(details);
  };
  
  runApp(const MyApp());
}
