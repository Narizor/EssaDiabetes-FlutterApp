import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../Routes/routes.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, Routes.Loginpage);
    });
    return Scaffold(
        body: SizedBox(
      width: double.infinity,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.center, children: const [
        Image(
          image: AssetImage("assets/images/mainLogo.png"),
          width: 200,
        ),
        SizedBox(
          height: 50,
        ),
        SpinKitChasingDots(
          color: Color.fromARGB(229, 21, 182, 185),
          size: 50.0,
        )
      ]),
    ));
  }
}
