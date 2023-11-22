import 'package:eapp24/splash_screen.dart';
import 'package:flutter/material.dart';

import 'MyWebViewApp.dart';
import 'app_res.dart';



void main() async {

  runApp(
      const MyApp());

  Future.delayed(const Duration(seconds: 2), () {
    // Replace this with the route to your main screen
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  const WebViewExample(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppRes.appColor),
      ),
    ));
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: AppRes.appColor),
        useMaterial3: true,
      ),
      home:const  SplashScreen(),
    );
  }
}

//message.title message.body

//
//
// import 'package:eapp24/push_notification_model.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/material.dart';
// import 'package:overlay_support/overlay_support.dart';
//
// import 'notification_badge.dart';
//
//
// Future _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   print("Handle a background message: ${message.messageId}");
// }
//
// Future<void> main() async {
//
//   //WidgetsFlutterBinding.ensureInitialized();
//   //await Firebase.initializeApp();
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter iOS Push Notification',
//       theme: ThemeData(
//
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(),
//     );
//   }
// }
//
// //message.title message.body
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   late int _totalNotifications;
//   late final FirebaseMessaging _messaging;
//   PushNotification? notificationInfo;
//
//   void requestAndRegisterNotification()async{
//
//     // 1. Initialize the firebase app
//     //WidgetsFlutterBinding.ensureInitialized();
//     await Firebase.initializeApp();
//
//     // 2. Initialize the Firebase Messaging
//     _messaging = FirebaseMessaging.instance;
//     FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
//
//     // 3. On iOS take the user permission settings
//     NotificationSettings settings = await _messaging.requestPermission(
//         alert: true,
//         badge: true,
//         provisional: false,
//         sound: true
//     );
//
//     if(settings.authorizationStatus==AuthorizationStatus.authorized){
//       print("User granted notification permission");
//
//       String? token = await _messaging.getToken();
//       print("The device token is ${token!}");
//
//       //For handle the received notifications
//       FirebaseMessaging.onMessage.listen((RemoteMessage message){
//         //parse the message received
//         PushNotification notification = PushNotification(
//           title: message.notification?.title,
//           body:  message.notification?.body,
//         );
//
//         setState(() {
//           notificationInfo = notification;
//           _totalNotifications++;
//         });
//
//         if(notificationInfo != null){
//           showSimpleNotification(
//             Text(notificationInfo!.title!),
//             leading:NotificationBadge(totalNotification: _totalNotifications),
//             subtitle: Text(notificationInfo!.body!),
//             background: Colors.cyan.shade700,
//             duration: const Duration(seconds: 2),
//           );
//         }
//
//       });
//     }
//   }
//
//   @override
//   void initState() {
//     requestAndRegisterNotification();
//     _totalNotifications=0;
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Push notification on iOS"),),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           const Text("Notification Received"),
//           const SizedBox(height: 16,),
//           NotificationBadge(totalNotification: _totalNotifications),
//           const SizedBox(height: 16,),
//           notificationInfo!= null ?
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text("TITLE: ${notificationInfo!.title}"),
//               Text("Body: ${notificationInfo!.body}"),
//             ],
//           ):
//           Container(),
//         ],
//       ),
//     );
//   }
// }
//
