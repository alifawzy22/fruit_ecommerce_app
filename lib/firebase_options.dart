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
    apiKey: 'AIzaSyCpMaLHykbRy3GDzG8V6SD0WUUhg6DRkTk',
    appId: '1:854826227980:web:764989fc8dce55335bd129',
    messagingSenderId: '854826227980',
    projectId: 'fruits-app-74f08',
    authDomain: 'fruits-app-74f08.firebaseapp.com',
    storageBucket: 'fruits-app-74f08.firebasestorage.app',
    measurementId: 'G-KRKCL0FENV',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCQggszE3Ok66NKbRTR3UVCOzkwaUN1KeI',
    appId: '1:854826227980:android:5c2efdac32b2d7985bd129',
    messagingSenderId: '854826227980',
    projectId: 'fruits-app-74f08',
    storageBucket: 'fruits-app-74f08.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDcEBjChxsoMkBn4Wbk9olPDqOsIdkDyas',
    appId: '1:854826227980:ios:5d311b847995d2305bd129',
    messagingSenderId: '854826227980',
    projectId: 'fruits-app-74f08',
    storageBucket: 'fruits-app-74f08.firebasestorage.app',
    iosBundleId: 'com.example.fruitEcommerceApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDcEBjChxsoMkBn4Wbk9olPDqOsIdkDyas',
    appId: '1:854826227980:ios:5d311b847995d2305bd129',
    messagingSenderId: '854826227980',
    projectId: 'fruits-app-74f08',
    storageBucket: 'fruits-app-74f08.firebasestorage.app',
    iosBundleId: 'com.example.fruitEcommerceApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCpMaLHykbRy3GDzG8V6SD0WUUhg6DRkTk',
    appId: '1:854826227980:web:d259334e102f5ac75bd129',
    messagingSenderId: '854826227980',
    projectId: 'fruits-app-74f08',
    authDomain: 'fruits-app-74f08.firebaseapp.com',
    storageBucket: 'fruits-app-74f08.firebasestorage.app',
    measurementId: 'G-GF8VRZ4N1C',
  );
}
