import 'dart:developer';

import 'package:first_app_flutter/theme.dart';
import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
          child: Column(
        children: [
          const Header(),
          const SizedBox(
            height: 50,
          ),
          // ignore: sized_box_for_whitespace
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const TitleWithCustomUnderline(text: "Bienvenido"),
                IconButton(
                    iconSize: 35.0,
                    onPressed: () {},
                    color: Colors.grey[800],
                    icon: const Icon(Icons.accessibility_new)),
              ],
            ),
          )
        ],
      )),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 1.0, right: 5.0, top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              iconSize: 35.0,
              onPressed: () {
                if (Navigator.canPop(context)) {
                  Navigator.pop(context);
                }
                // ignore: no_leading_underscores_for_local_identifiers
                final GoogleSignIn _googleSignIn = GoogleSignIn();
                FirebaseAuth.instance.signOut();
                _googleSignIn.signOut();
                log('Signout');
              },
              color: Colors.grey[800],
              icon: const Icon(Icons.menu)),
          const Image(
            image: AssetImage("assets/images/mainLogo.png"),
            width: 50,
          ),
          const CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/images/default.png'),
          )
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0 / 4),
            child: Text(
              text,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
