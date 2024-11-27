// import 'package:firebase_messaging/firebase_messaging.dart';

// class NotificationService {
//   final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

//   // Get the device token for push notifications
//   Future<String?> getDeviceToken() async {
//     try {
//       final token = await _firebaseMessaging.getToken();
//       return token;
//     } catch (e) {
//       throw Exception("Error fetching push notification token: $e");
//     }
//   }

//   // Subscribe to a topic for notifications
//   Future<void> subscribeToTopic(String topic) async {
//     await _firebaseMessaging.subscribeToTopic(topic);
//   }

//   // Unsubscribe from a topic
//   Future<void> unsubscribeFromTopic(String topic) async {
//     await _firebaseMessaging.unsubscribeFromTopic(topic);
//   }

//   // Handle incoming messages (background or foreground)
//   Future<void> handleNotificationMessages() async {
//     FirebaseMessaging.onMessage.listen((RemoteMessage message) {
//       // Handle message in foreground
//       print("Received a message: ${message.notification?.title}");
//     });

//     FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
//       // Handle message when app is opened from a notification
//       print("Opened app from a notification: ${message.notification?.title}");
//     });
//   }
// }


// Usage Example:

// final notificationService = NotificationService();
// final token = await notificationService.getDeviceToken();
// await notificationService.subscribeToTopic("news");