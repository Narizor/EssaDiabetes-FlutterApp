import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:first_app_flutter/theme.dart';

import '../Routes/routes.dart';

class PrimaryButton extends StatelessWidget {
  final String buttonText;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  const PrimaryButton({
    super.key,
    required this.buttonText,
    required this.emailController,
    required this.passwordController,
  });
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.08,
          child: Stack(alignment: Alignment.center, children: <Widget>[
            Positioned.fill(
              child: Container(
                decoration: const BoxDecoration(
                  color: kPrimaryColor,
                ),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: kPrimaryColor,
                padding: const EdgeInsets.all(16.0),
              ),
              onPressed: () async {
                try {
                  final UserCredential userCredential =
                      await FirebaseAuth.instance.signInWithEmailAndPassword(
                    email: emailController.text,
                    password: passwordController.text,
                  );
                  if (userCredential.user != null) {
                    // ignore: use_build_context_synchronously
                    Navigator.pushNamed(context, Routes.Homepage);
                  }
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'user-not-found') {
                    log('No user found for that email.');
                  } else if (e.code == 'wrong-password') {
                    log('Wrong password provided for that user.');
                  }
                }
              },
              child: Text(buttonText,
                  style: textButton.copyWith(color: kWhiteColor)),
            ),
          ])),
    );
  }
}

        // decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(16), color: kPrimaryColor),