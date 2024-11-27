import 'package:flutter/material.dart';
// import 'package:get_it/get_it.dart';
// import 'services/network_service.dart';
// import 'services/authentication_service.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final networkService = GetIt.I<NetworkService>();
    // final authService = GetIt.I<AuthenticationService>();

    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            // final isAuthenticated = await authService.login();
            // if (isAuthenticated) {
            //   networkService.fetchData();
            // }
          },
          child: const Text('Login & Fetch Data'),
        ),
      ),
    );
  }
}
