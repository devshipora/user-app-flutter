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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAwaQUEKLhBhCiiiKl5-SUOKDKFQzz0xvk',
    appId: '1:519800064294:android:69545f39fab8e45e3699e7',
    messagingSenderId: '519800064294',
    projectId: 'flutter-test-56802',
    databaseURL: 'https://flutter-test-56802.firebaseio.com',
    storageBucket: 'flutter-test-56802.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAAkgVideBk-N-xlqs3sVkysXuSUpUciaM',
    appId: '1:519800064294:ios:55ffc6b0cff7e38f3699e7',
    messagingSenderId: '519800064294',
    projectId: 'flutter-test-56802',
    databaseURL: 'https://flutter-test-56802.firebaseio.com',
    storageBucket: 'flutter-test-56802.appspot.com',
    androidClientId: '519800064294-3n82g392e7f6gkqba8pg7nq0rn8409v1.apps.googleusercontent.com',
    iosClientId: '519800064294-7or9hjl9uke7tc2cgijjo59cb4u46bsr.apps.googleusercontent.com',
    iosBundleId: 'com.example.shipora1',
  );
}
