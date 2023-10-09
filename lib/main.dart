import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:things/core/firebase/firebase_options.dart';
import 'package:things/src/things_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  ///////////////////////////

  // final FirestoreCollections datasource = FirestoreCollections();

  ///////////////////////////

  runApp(const ThingsApp());
}

// final class FirestoreCollections {
//   static final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

//   CollectionReference get things => firebaseFirestore.collection('things');
//   CollectionReference posts(final userID) => firebaseFirestore.collection('things').doc(userID).collection('posts');
// }
