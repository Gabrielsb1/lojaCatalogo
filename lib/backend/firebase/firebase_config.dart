import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDwMjwLTh6XPe1jueGszO7c2C8g5_dZyg4",
            authDomain: "super-loja-a9da4.firebaseapp.com",
            projectId: "super-loja-a9da4",
            storageBucket: "super-loja-a9da4.firebasestorage.app",
            messagingSenderId: "854830941874",
            appId: "1:854830941874:web:312c3b88379d2e93a12bab"));
  } else {
    await Firebase.initializeApp();
  }
}
