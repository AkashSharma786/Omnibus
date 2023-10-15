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
    apiKey: 'AIzaSyCN2AtJDsGzmEX0xbqbDDlW3u3J2JCMX3A',
    appId: '1:631802274736:web:b41c30ff98843c5a1f6c75',
    messagingSenderId: '631802274736',
    projectId: 'omnibus-38e36',
    authDomain: 'omnibus-38e36.firebaseapp.com',
    storageBucket: 'omnibus-38e36.appspot.com',
    measurementId: 'G-93CXNV9VKX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAc_nKxsC4C8Eu_ukZ24G0IfoMy6bcZlts',
    appId: '1:631802274736:android:b568eb0d2b383b301f6c75',
    messagingSenderId: '631802274736',
    projectId: 'omnibus-38e36',
    storageBucket: 'omnibus-38e36.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBVYKCaFCOHR2MgdGxBfPY5NWuHlIHhrf8',
    appId: '1:631802274736:ios:b2d93535e8fc1ae31f6c75',
    messagingSenderId: '631802274736',
    projectId: 'omnibus-38e36',
    storageBucket: 'omnibus-38e36.appspot.com',
    iosBundleId: 'com.example.omnibus',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBVYKCaFCOHR2MgdGxBfPY5NWuHlIHhrf8',
    appId: '1:631802274736:ios:c8cd89a1529679cf1f6c75',
    messagingSenderId: '631802274736',
    projectId: 'omnibus-38e36',
    storageBucket: 'omnibus-38e36.appspot.com',
    iosBundleId: 'com.example.omnibus.RunnerTests',
  );
}