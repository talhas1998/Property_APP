import 'dart:math';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:propertyapp/DescriptionScreen.dart';
import 'package:propertyapp/Wishlist.dart';
import 'package:propertyapp/dashboard.dart';
import 'package:propertyapp/firebase_options.dart';
import 'package:propertyapp/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginView(),
    );
  }
}
