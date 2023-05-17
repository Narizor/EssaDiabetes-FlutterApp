import 'package:flutter/material.dart';
import 'package:first_app_flutter/theme.dart';

class SignUpForm extends StatefulWidget {
  final TextEditingController newPasswordController;
  final TextEditingController newEmailController;
  const SignUpForm({
    super.key,
    required this.newPasswordController,
    required this.newEmailController,
  });

  @override
  // ignore: library_private_types_in_public_api
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool _isObscure = true;
  late TextEditingController newPasswordController;
  late TextEditingController newEmailController;

  @override
  void initState() {
    super.initState();
    newPasswordController = widget.newPasswordController;
    newEmailController = widget.newEmailController;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildInputForm('Primer Nombre', false, false),
        buildInputForm('Apellidos', false, false),
        buildInputForm('Email', false, true),
        buildInputForm('Contraseña', true, false),
      ],
    );
  }

  Padding buildInputForm(String hint, bool pass, bool mainid) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: TextFormField(
          controller: pass
              ? newPasswordController
              : mainid
                  ? newEmailController
                  : null,
          obscureText: pass ? _isObscure : false,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(color: kTextFieldColor),
            focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: kPrimaryColor)),
            suffixIcon: pass
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                    icon: _isObscure
                        ? const Icon(
                            Icons.visibility_off,
                            color: kTextFieldColor,
                          )
                        : const Icon(
                            Icons.visibility,
                            color: kPrimaryColor,
                          ))
                : null,
          ),
        ));
  }
}
