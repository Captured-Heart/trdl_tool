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
      // ignore: no_default_cases
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyB1czFGBPfmKx2FkRNX2jAEyjTJr2yAZa4',
    appId: '1:35344141665:web:cbd0bb53c9935223334920',
    messagingSenderId: '35344141665',
    projectId: 'trdltool-2021',
    authDomain: 'trdltool-2021.firebaseapp.com',
    storageBucket: 'trdltool-2021.appspot.com',
    measurementId: 'G-ZDEW4THG8J',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDAKJBLnQbowS5wJN2K-0X2Gvoz8cBwvFg',
    appId: '1:35344141665:android:0a6a0c57711f7946334920',
    messagingSenderId: '35344141665',
    projectId: 'trdltool-2021',
    storageBucket: 'trdltool-2021.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAWMsTfsk45HqgPPX1q2_s2AgG4hWH5gHI',
    appId: '1:35344141665:ios:b730eec8531992ff334920',
    messagingSenderId: '35344141665',
    projectId: 'trdltool-2021',
    storageBucket: 'trdltool-2021.appspot.com',
    iosClientId:
        '35344141665-ah73ihrbdhcdjd857l8s5qg1rsh0qv0a.apps.googleusercontent.com',
    iosBundleId: 'nl.plotsklapps.trdlTool',
  );
}