import 'package:flutter/material.dart';
import 'package:myapp/core/constants/app_routes.dart';
import 'package:myapp/core/services/connectivity_service.dart';
import 'package:myapp/core/themes/app_theme.dart';
import 'package:myapp/localization/localization.dart';
import 'package:provider/provider.dart';  // Example of state management
import 'package:flutter_localizations/flutter_localizations.dart';              // App routes configuration
import 'screens/splash_screen.dart';    // Splash Screen               // App-wide themes        // Localization configuration
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Example of injecting services, e.g. connectivity service
        Provider<ConnectivityService>(create: (_) => ConnectivityService()),
        // Any other services or state management providers you need
      ],
      child: MaterialApp(
        title: 'Large Flutter Project',
        theme: AppTheme.lightTheme,  // Light theme configuration
        darkTheme: AppTheme.darkTheme,  // Dark theme configuration
        themeMode: ThemeMode.system,  // Default to system theme
        initialRoute: '/',  // Initial route for the app
        routes: AppRoutes.routes, // Route definitions
        onGenerateRoute: AppRoutes.onGenerateRoute, // Dynamic routing
        home: const SplashScreen(),  // Splash Screen on launch
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          const LocalizationDelegate(),  // Directly use the LocalizationDelegate (no .delegate)
        ],
        supportedLocales: const [
          Locale('en', 'US'), // English (US)
          Locale('es', 'ES'), // Spanish (Spain)
        ],
        locale: const Locale('en', 'US'),  // Default locale
        debugShowCheckedModeBanner: false, // Hide the debug banner
      ),
    );
  }
}