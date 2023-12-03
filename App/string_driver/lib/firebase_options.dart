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
    apiKey: 'AIzaSyDCXNCTyU1-B2hR9_uM8udyidEym8XWJ9I',
    appId: '1:161246127971:web:509fb53cffd0975ae69556',
    messagingSenderId: '161246127971',
    projectId: 'stringappdb',
    authDomain: 'stringappdb.firebaseapp.com',
    storageBucket: 'stringappdb.appspot.com',
    measurementId: 'G-KQLRG7RYRL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBGOXuzBBJVrfW2dazWZXap9LRHIO7zc8w',
    appId: '1:161246127971:android:318f9bd557bcd2cee69556',
    messagingSenderId: '161246127971',
    projectId: 'stringappdb',
    storageBucket: 'stringappdb.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAVVY-ZCsxF58ecgqz54SssKLeKPJr5nCQ',
    appId: '1:161246127971:ios:3623a6a961cc0dffe69556',
    messagingSenderId: '161246127971',
    projectId: 'stringappdb',
    storageBucket: 'stringappdb.appspot.com',
    androidClientId: '161246127971-1st84r860cb6mot8nv9hi63uotc9b05g.apps.googleusercontent.com',
    iosClientId: '161246127971-virtkjtes2i0v5or00g75tne54ubj411.apps.googleusercontent.com',
    iosBundleId: 'com.example.stringDriver',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAVVY-ZCsxF58ecgqz54SssKLeKPJr5nCQ',
    appId: '1:161246127971:ios:3623a6a961cc0dffe69556',
    messagingSenderId: '161246127971',
    projectId: 'stringappdb',
    storageBucket: 'stringappdb.appspot.com',
    androidClientId: '161246127971-1st84r860cb6mot8nv9hi63uotc9b05g.apps.googleusercontent.com',
    iosClientId: '161246127971-virtkjtes2i0v5or00g75tne54ubj411.apps.googleusercontent.com',
    iosBundleId: 'com.example.stringDriver',
  );
}
