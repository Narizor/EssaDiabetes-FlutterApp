import 'package:first_app_flutter/services/credentials_firebase.dart';
import 'package:flutter/material.dart';
import 'package:sign_in_button/sign_in_button.dart';

class LoginOption extends StatelessWidget {
  const LoginOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: SignInButton(
            text: "Iniciar con google",
            Buttons.google,
            onPressed: () async {
              signInWithGoogle();
            },
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: SignInButton(
            text: "Iniciar con Facebook",
            Buttons.facebook,
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}

class BuildButton extends StatelessWidget {
  final Image iconImage;
  final String textButton;
  const BuildButton(
      {super.key, required this.iconImage, required this.textButton});
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Container(
      height: mediaQuery.height * 0.06,
      width: mediaQuery.width * 0.36,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          iconImage,
          const SizedBox(
            width: 5,
          ),
          Text(textButton),
        ],
      ),
    );
  }
}
