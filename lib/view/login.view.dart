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
  late bool _supportState = false;
  @override
  void initState() {
    super.initState();
    auth = LocalAuthentication();
    auth.isDeviceSupported().then((bool isSupported) => setState(() {
          _supportState = isSupported;
        }));
  }

  Future<void> _authenticate() async {
    try {
      bool authenticated = await auth.authenticate(
          localizedReason:
              "Scan your fingerprint (or face or whatever) to authenticate",
          options: const AuthenticationOptions(
              stickyAuth: true, biometricOnly: true));

      // ignore: avoid_print
      print("Authenticated : $authenticated");
      if (authenticated) {
        // ignore: use_build_context_synchronously
        Navigator.pushNamed(context, Routes.Homepage);
      }
    } on PlatformException catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }

  Future<void> _getAvailableBiometrics() async {
    List<BiometricType> availableBiometrics =
        await auth.getAvailableBiometrics();
    // ignore: avoid_print
    print("List of availableBiometrics : $availableBiometrics");

    if (!mounted) {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xFF3C3E52),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
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
              if (_supportState)
                const Text("this device is supported")
              else
                const Text("this device is not supported"),
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
                    onPressed: _getAvailableBiometrics,
                    child: const Text(
                      "Get availableBiometrics",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
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
            ]),
          )
        ]),
      ),
    ));
  }
}
