import 'package:first_app_flutter/widgets/primaryButton.widget.dart';
import 'package:first_app_flutter/widgets/resetForm.widget.dart';
import 'package:flutter/material.dart';
import 'package:first_app_flutter/view/login.view.dart';
import 'package:first_app_flutter/theme.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

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
                height: 250,
              ),
              Text(
                'Resetear Contraseña',
                style: titleText,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Porfavor ingrese su email',
                style: subTitle.copyWith(fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              const ResetForm(),
              const SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => const LoginView());
                },
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    elevation: 0,
                  ),
                  child: const Text("Registrarse"),
                ),
                // const PrimaryButton(
                //   buttonText: 'Resetear Contraseña',
                //   emailController: _emailController,
                //   passwordController:_passwordController,
                //   )
              )
            ],
          ),
        ),
      ),
    );
  }
}
