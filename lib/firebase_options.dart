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
    apiKey: 'AIzaSyBNvEVsjbchUYEf1N1zvA7fJhegbjNulf0',
    appId: '1:715017071452:web:67761f19200ecb1da06f99',
    messagingSenderId: '715017071452',
    projectId: 'device-streaming-bba41ce4',
    authDomain: 'device-streaming-bba41ce4.firebaseapp.com',
    storageBucket: 'device-streaming-bba41ce4.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCMpqcZxbizBh4rLTEvjkN0WynQjfMuFPI',
    appId: '1:715017071452:ios:e7da752fe8a08d30a06f99',
    messagingSenderId: '715017071452',
    projectId: 'device-streaming-bba41ce4',
    storageBucket: 'device-streaming-bba41ce4.firebasestorage.app',
    iosBundleId: 'com.example.myApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCMpqcZxbizBh4rLTEvjkN0WynQjfMuFPI',
    appId: '1:715017071452:ios:e7da752fe8a08d30a06f99',
    messagingSenderId: '715017071452',
    projectId: 'device-streaming-bba41ce4',
    storageBucket: 'device-streaming-bba41ce4.firebasestorage.app',
    iosBundleId: 'com.example.myApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBNvEVsjbchUYEf1N1zvA7fJhegbjNulf0',
    appId: '1:715017071452:web:1262e760e7ad28d3a06f99',
    messagingSenderId: '715017071452',
    projectId: 'device-streaming-bba41ce4',
    authDomain: 'device-streaming-bba41ce4.firebaseapp.com',
    storageBucket: 'device-streaming-bba41ce4.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAXqNe1IPmYMu5L5t6bXyOe-xEZe8T4bMw',
    appId: '1:715017071452:android:1279e390efb9a2b1a06f99',
    messagingSenderId: '715017071452',
    projectId: 'device-streaming-bba41ce4',
    storageBucket: 'device-streaming-bba41ce4.firebasestorage.app',
  );

}