// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAHv8ynQhIypCjERCgp3jWftbBnA2U3V9s',
    appId: '1:1058885263666:web:f0f56345431aaa2478b72b',
    messagingSenderId: '1058885263666',
    projectId: 'flutter-daily-report',
    authDomain: 'flutter-daily-report.firebaseapp.com',
    storageBucket: 'flutter-daily-report.appspot.com',
    measurementId: 'G-N2NK03TXLR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCd_hNjwtJoxDxH1gM6QoyvDXsHYcgA1ag',
    appId: '1:1058885263666:android:8a3927a639cafc7478b72b',
    messagingSenderId: '1058885263666',
    projectId: 'flutter-daily-report',
    storageBucket: 'flutter-daily-report.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBx1X_-WfVeGf4ZXWxepqkDILzjMyeDNEI',
    appId: '1:1058885263666:ios:a8b485e212fe669d78b72b',
    messagingSenderId: '1058885263666',
    projectId: 'flutter-daily-report',
    storageBucket: 'flutter-daily-report.appspot.com',
    iosClientId: '1058885263666-45if9l2fe5lt7vdpropkme910pal2a43.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterDailyReport',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBx1X_-WfVeGf4ZXWxepqkDILzjMyeDNEI',
    appId: '1:1058885263666:ios:a8b485e212fe669d78b72b',
    messagingSenderId: '1058885263666',
    projectId: 'flutter-daily-report',
    storageBucket: 'flutter-daily-report.appspot.com',
    iosClientId: '1058885263666-45if9l2fe5lt7vdpropkme910pal2a43.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterDailyReport',
  );
}
