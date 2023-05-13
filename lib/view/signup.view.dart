import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_app_flutter/view/home.view.dart';
import 'package:first_app_flutter/widgets/checkbox.widget.dart';
import 'package:first_app_flutter/widgets/primaryButton.widget.dart';
import 'package:first_app_flutter/widgets/signupForm.widget.dart';
import 'package:flutter/material.dart';
import 'package:first_app_flutter/theme.dart';
import 'package:get/get.dart';
import 'package:first_app_flutter/view/login.view.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _newEmailController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 70,
            ),
            Padding(
              padding: kDefaultPadding,
              child: Text(
                'REGISTRATE',
                style: titleText,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: kDefaultPadding,
              child: Row(
                children: [
                  Text(
                    'Ya tienes una cuenta?',
                    style: subTitle,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const LoginView());
                    },
                    child: Text(
                      'Log In',
                      style: textButton.copyWith(
                        decoration: TextDecoration.underline,
                        decorationThickness: 1,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: kDefaultPadding,
              child: SignUpForm(),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: kDefaultPadding,
              child: CheckBox('Acepto los terminos y condiciones.'),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: kDefaultPadding,
              child: CheckBox('Tengo más de 18 años.'),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: kDefaultPadding,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.08,
                    child:
                        Stack(alignment: Alignment.center, children: <Widget>[
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
                              // ignore: unused_local_variable
                              UserCredential userCredential = await FirebaseAuth
                                  .instance
                                  .createUserWithEmailAndPassword(
                                      email: _newEmailController.text,
                                      password: _newPasswordController.text);
                              Get.to(() => const HomeView());
                            } on FirebaseAuthException catch (e) {
                              if (e.code == 'weak-password') {
                                log('The password provided is too weak.');
                              } else if (e.code == 'email-already-in-use') {
                                log('The account already exists for that email.');
                              }
                            }
                          },
                          child: Text("Registrarse",
                              style: textButton.copyWith(color: kWhiteColor))),
                    ])),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
