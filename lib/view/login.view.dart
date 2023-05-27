import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:first_app_flutter/Routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late final LocalAuthentication auth;
  final TextEditingController _idController = TextEditingController();
  @override
  void initState() {
    super.initState();
    auth = LocalAuthentication();
  }

  Future<void> _authenticate() async {
    try {
      final db = FirebaseFirestore.instance;
      final id = _idController.text;
      final documentRef = db.collection("Users").doc(id);
      bool documentExists =
          await documentRef.get().then((snapshot) => snapshot.exists);
      if (!documentExists) {
        await documentRef.set({});
      }
      bool authenticated = await auth.authenticate(
          localizedReason:
              "Scan your fingerprint (or face or whatever) to authenticate",
          options: const AuthenticationOptions(
              stickyAuth: true, biometricOnly: true));

      // ignore: avoid_print
      print("Authenticated : $authenticated");

      if (authenticated) {
        // ignore: use_build_context_synchronously
        Navigator.pushNamed(context, Routes.PresettingPage);
      }
    } on PlatformException catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xFF3C3E52),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(children: [
            const Center(
              child: Text(
                "EssaDiabetes",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              margin: const EdgeInsets.symmetric(vertical: 50.0),
              child: Column(children: [
                Image.asset(
                  "assets/images/fingerprint.png",
                  width: 150,
                  color: Colors.lightBlue[400],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Autenticación por Huella",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
                // ignore: sized_box_for_whitespace
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 15.0),
                  width: 140,
                  child: const Text(
                    "Autenticación usando la huella digital como metodo de acceso a la apliación",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      height: 1.5,
                    ),
                  ),
                ),
                // ignore: sized_box_for_whitespace
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 15.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.lightBlue[400],
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 4.0, bottom: 8.0),
                    child: TextButton(
                      onPressed: _authenticate,
                      child: const Text(
                        "Ingresar",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ),
                // ignore: avoid_unnecessary_containers
                Container(
                    child: TextField(
                  controller: _idController,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter
                        .digitsOnly, // Acepta solo dígitos
                    LengthLimitingTextInputFormatter(
                        8), // Limita la longitud máxima a 8 caracteres
                  ],
                  style: const TextStyle(
                    color: Colors.white, // Cambia el color del texto a blanco
                  ),
                  textAlign: TextAlign.center, // Centra el texto ingresado
                  decoration: const InputDecoration(
                    labelText: 'Ingrese su DNI',
                    labelStyle: TextStyle(
                      color: Colors.white, // Cambia el color del label a blanco
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors
                            .white, // Cambia el color del borde cuando no está enfocado
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors
                            .white, // Cambia el color del borde cuando está enfocado
                      ),
                    ),
                  ),
                ))
              ]),
            )
          ]),
        ),
      ),
    ));
  }
}
