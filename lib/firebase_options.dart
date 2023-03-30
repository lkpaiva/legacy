import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAb7zCetJP3Rw8fafVUJJLn_bEzoYOkYdI',
    appId: '1:1037913820196:web:69574a70f1536082941cb1',
    messagingSenderId: '1037913820196',
    projectId: 'cadastro-fc9ba',
    authDomain: 'cadastro-fc9ba.firebaseapp.com',
    storageBucket: 'cadastro-fc9ba.appspot.com',
    measurementId: 'G-DTSM0KSXN0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCpvLaEvWdlw28apwojoEIAe0NgB5R7AFg',
    appId: '1:1037913820196:android:ff7ffb298409fb09941cb1',
    messagingSenderId: '1037913820196',
    projectId: 'cadastro-fc9ba',
    storageBucket: 'cadastro-fc9ba.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA7n-XJDYHbhw6zdeYBVknw4vJ4JDBI0CQ',
    appId: '1:1037913820196:ios:b617baef50703ec6941cb1',
    messagingSenderId: '1037913820196',
    projectId: 'cadastro-fc9ba',
    storageBucket: 'cadastro-fc9ba.appspot.com',
    iosClientId:
        '1037913820196-l05dfdt94trsnu21loaevjkoj9hap926.apps.googleusercontent.com',
    iosBundleId: 'com.example.legacy',
  );
}
