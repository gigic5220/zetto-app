import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:tandangi/app.dart';
import 'package:tandangi/core/di/di.dart';
import 'package:tandangi/flavors.dart';

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  await Firebase.initializeApp();

  print("Handling a background message: ${message.messageId}");
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  await GoogleSignIn.instance.initialize();

  KakaoSdk.init(nativeAppKey: FlavorInfo.kakaoNativeAppKey);
  FlavorInfo.flavor = Flavor.values.firstWhere(
    (e) => e.name == (appFlavor ?? 'dev'),
    orElse: () => Flavor.dev,
  );
  initDI();

  final talker = getIt<Talker>();

  FirebaseMessaging messaging = FirebaseMessaging.instance;
  // You may set the permission requests to "provisional" which allows the user to choose what type
  // of notifications they would like to receive once the user receives a notification.
  NotificationSettings settings = await messaging.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );

  // For apple platforms, make sure the APNS token is available before making any FCM plugin API calls
  final apnsToken = await messaging.getAPNSToken();
  if (apnsToken != null) {
    talker.info('APNS token: $apnsToken');
  }
  messaging.onTokenRefresh
      .listen((fcmToken) {
        // TODO: If necessary send token to application server.

        // Note: This callback is fired at each app startup and whenever a new
        // token is generated.
      })
      .onError((err) {
        // Error getting token.
      });

  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    print('Got a message whilst in the foreground!');
    print('Message data: ${message.data}');

    if (message.notification != null) {
      print('Message also contained a notification: ${message.notification}');
    }
  });

  final fcmToken = await messaging.getToken();
  talker.info('FCM token: $fcmToken');
  // release + 기기: 터미널에 안 보이면 별도 터미널에서 `flutter logs` 실행
  // ignore: avoid_print
  print('[FCM] token=$fcmToken');
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(ProviderScope(child: const App(), retry: (retryCount, error) => null));
}
