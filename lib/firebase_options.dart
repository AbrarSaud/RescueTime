// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDf9k_gSzTO7Zvk7d-LF8_CT9ZfnzzGyVU',
    appId: '1:1042600435546:web:09d442071b5647fa4e5d63',
    messagingSenderId: '1042600435546',
    projectId: 'rescuetimeapp-8564b',
    authDomain: 'rescuetimeapp-8564b.firebaseapp.com',
    storageBucket: 'rescuetimeapp-8564b.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDGQyM_h_zZcyDT6r87SlYTqwkjSG-CO8M',
    appId: '1:1042600435546:android:e936b9771ddd43cb4e5d63',
    messagingSenderId: '1042600435546',
    projectId: 'rescuetimeapp-8564b',
    storageBucket: 'rescuetimeapp-8564b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD_hCCMCsHmyOcZZJ9arj2o_nB-BTfH9co',
    appId: '1:1042600435546:ios:896fae642e4ce0564e5d63',
    messagingSenderId: '1042600435546',
    projectId: 'rescuetimeapp-8564b',
    storageBucket: 'rescuetimeapp-8564b.appspot.com',
    iosBundleId: 'com.example.rescueTime',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD_hCCMCsHmyOcZZJ9arj2o_nB-BTfH9co',
    appId: '1:1042600435546:ios:896fae642e4ce0564e5d63',
    messagingSenderId: '1042600435546',
    projectId: 'rescuetimeapp-8564b',
    storageBucket: 'rescuetimeapp-8564b.appspot.com',
    iosBundleId: 'com.example.rescueTime',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDf9k_gSzTO7Zvk7d-LF8_CT9ZfnzzGyVU',
    appId: '1:1042600435546:web:51bb79818a8eb5064e5d63',
    messagingSenderId: '1042600435546',
    projectId: 'rescuetimeapp-8564b',
    authDomain: 'rescuetimeapp-8564b.firebaseapp.com',
    storageBucket: 'rescuetimeapp-8564b.appspot.com',
  );
}