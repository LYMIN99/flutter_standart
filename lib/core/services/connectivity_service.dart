import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityService {
  // Check if the device is connected to the internet
  Future<bool> isConnected() async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    return connectivityResult != ConnectivityResult.none;
  }

  // Listen to connectivity changes (e.g., if the device goes offline or online)
  Stream<bool> get connectivityStream async* {
    // Use 'async*' to return a stream of bool values.
    await for (var connectivityResult in Connectivity().onConnectivityChanged) {
      yield connectivityResult != ConnectivityResult.none;
    }
  }
}

// Usage Example:
// final connectivityService = ConnectivityService();

// // To listen to connectivity changes
// connectivityService.connectivityStream.listen((isConnected) {
//   if (isConnected) {
//     print("Device is connected to the internet.");
//   } else {
//     print("Device is offline.");
//   }
// });

