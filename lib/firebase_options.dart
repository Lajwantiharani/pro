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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDOuhGdn-U13bJSAPXCyry4FNgn1xllIGw',
    appId: '1:449371582151:web:0cbd15f1c3dabcfa4618e2',
    messagingSenderId: '449371582151',
    projectId: 'madpro-83cf8',
    authDomain: 'madpro-83cf8.firebaseapp.com',
    storageBucket: 'madpro-83cf8.appspot.com',
    measurementId: 'G-4WBS7J3G02',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDlb1G_zPSMJGmcU2UDw34unZk-m8iiNEQ',
    appId: '1:449371582151:android:82777a5ccfec07664618e2',
    messagingSenderId: '449371582151',
    projectId: 'madpro-83cf8',
    storageBucket: 'madpro-83cf8.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBFCeWHrBW04Bf4Iwv1EVO1CPAH33rWkAI',
    appId: '1:449371582151:ios:d490204d766780fe4618e2',
    messagingSenderId: '449371582151',
    projectId: 'madpro-83cf8',
    storageBucket: 'madpro-83cf8.appspot.com',
    iosBundleId: 'com.example.pro',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDOuhGdn-U13bJSAPXCyry4FNgn1xllIGw',
    appId: '1:449371582151:web:ed31cc1e6aaa0b204618e2',
    messagingSenderId: '449371582151',
    projectId: 'madpro-83cf8',
    authDomain: 'madpro-83cf8.firebaseapp.com',
    storageBucket: 'madpro-83cf8.appspot.com',
    measurementId: 'G-VK4ELR6N1H',
  );

}