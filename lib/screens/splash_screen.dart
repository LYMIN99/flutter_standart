import 'package:flutter/material.dart';
import 'package:myapp/core/constants/app_routes.dart';
import 'package:myapp/core/services/connectivity_service.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    // Simulating some initialization tasks (e.g., connectivity check)
    await Future.delayed(const Duration(seconds: 2));

    // You can check the connectivity here
    final connectivity = Provider.of<ConnectivityService>(context, listen: false);
    bool isConnected = await connectivity.isConnected();

    // After initialization, navigate to home screen
    if (isConnected) {
      Navigator.pushReplacementNamed(context, AppRoutes.home);
    } else {
      // Navigate to an error screen or show an offline message
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
