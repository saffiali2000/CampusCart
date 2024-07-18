import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCCmLv0LLW_1GZ4F47rvJFkjmtqzT4V3Qw",
            authDomain: "campus-cart-86c1bf.firebaseapp.com",
            projectId: "campus-cart-86c1bf",
            storageBucket: "campus-cart-86c1bf.appspot.com",
            messagingSenderId: "173033009197",
            appId: "1:173033009197:web:f5a64d7db056044827c8a4"));
  } else {
    await Firebase.initializeApp();
  }
}
