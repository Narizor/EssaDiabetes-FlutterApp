import 'package:first_app_flutter/widgets/loginForm.widget.dart';
import 'package:first_app_flutter/widgets/loginOption.widget.dart';
import 'package:first_app_flutter/widgets/primaryButton.widget.dart';
import 'package:flutter/material.dart';
import 'package:first_app_flutter/view/resetPassword.view.dart';
import 'package:first_app_flutter/view/signup.view.dart';
import 'package:first_app_flutter/theme.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: kDefaultPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 120,
              ),
              Text(
                'Bienvenido',
                style: titleText,
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    'Eres Nuevo?',
                    style: subTitle,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const SignUp());
                    },
                    child: Text(
                      'Sign Up',
                      style: textButton.copyWith(
                        decoration: TextDecoration.underline,
                        decorationThickness: 1,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const LogInForm(),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => const ResetPassword());
                },
                child: const Text(
                  'Olvidaste la contraseña?',
                  style: TextStyle(
                    color: kZambeziColor,
                    fontSize: 14,
                    decoration: TextDecoration.underline,
                    decorationThickness: 1,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const PrimaryButton(
                buttonText: 'Log In',
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'O logueate con :',
                style: subTitle.copyWith(color: kBlackColor),
              ),
              const SizedBox(
                height: 20,
              ),
              const LoginOption(),
            ],
          ),
        ),
      ),
    );
  }
}
