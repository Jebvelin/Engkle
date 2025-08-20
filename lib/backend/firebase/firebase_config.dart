import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDeKu8BH1Jqj3c9FMWGYNQXS3CkZ8Qui3s",
            authDomain: "engkle-e53ad.firebaseapp.com",
            projectId: "engkle-e53ad",
            storageBucket: "engkle-e53ad.firebasestorage.app",
            messagingSenderId: "461126139116",
            appId: "1:461126139116:web:5993c56da01da93ff479c9"));
  } else {
    await Firebase.initializeApp();
  }
}
