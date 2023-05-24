import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:first_app_flutter/view/splash.view.dart';
import 'Routes/pages.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool status = false;

  @override
  void initState() {
    super.initState();
    initAuth();
  }

  initAuth() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        log('User is currently signed out!');
        status = false;
        setState(() {});
        log(status.toString());
      } else {
        log('User is signed in!');
        status = true;
        setState(() {});
        log(status.toString());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    log(status.toString());
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "EssaDiabetes",
      theme: ThemeData(fontFamily: 'Poppins'),
      home: const SplashView(),
      routes: Pages.route,
    );
  }
}
