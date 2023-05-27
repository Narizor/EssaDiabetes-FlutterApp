import 'package:first_app_flutter/Routes/routes.dart';
import 'package:first_app_flutter/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PreSettingsView extends StatefulWidget {
  const PreSettingsView({super.key});

  @override
  State<PreSettingsView> createState() => _PreSettingsViewState();
}

class _PreSettingsViewState extends State<PreSettingsView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(children: [
          const Text(
            "Nivel de Actividad",
            style: TextStyle(fontSize: 32),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 23.0),
            width: double.infinity,
            decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(20.0)),
            child: Padding(
              padding: const EdgeInsets.only(top: 4.0, bottom: 8.0),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Poco o ningun ejercicio",
                  style: TextStyle(color: kDefaultIconLightColor, fontSize: 18),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 23.0),
            width: double.infinity,
            decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(20.0)),
            child: Padding(
              padding: const EdgeInsets.only(top: 4.0, bottom: 8.0),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Ejercicio ligero (1-3 días)",
                  style: TextStyle(color: kDefaultIconLightColor, fontSize: 18),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 23.0),
            width: double.infinity,
            decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(20.0)),
            child: Padding(
              padding: const EdgeInsets.only(top: 4.0, bottom: 8.0),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Ejercicio Moderado(3-5 días)",
                  style: TextStyle(color: kDefaultIconLightColor, fontSize: 18),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 23.0),
            width: double.infinity,
            decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(20.0)),
            child: Padding(
              padding: const EdgeInsets.only(top: 4.0, bottom: 8.0),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Ejercicio fuerte (6-7 días)",
                  style: TextStyle(color: kDefaultIconLightColor, fontSize: 18),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 23.0),
            width: double.infinity,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 4.0, bottom: 8.0),
              child: TextButton(
                onPressed: () {},
                child: const Row(
                  children: [
                    Icon(
                      FontAwesomeIcons
                          .dumbbell, // Reemplaza con el icono que deseas
                      color: kDefaultIconLightColor,
                    ),
                    SizedBox(width: 10), // Espacio entre el icono y el texto
                    Text(
                      "Ejercicio muy fuerte (2 vcs x día)",
                      style: TextStyle(
                          color: kDefaultIconLightColor, fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 23.0),
            width: MediaQuery.of(context).size.width * .4,
            decoration: BoxDecoration(
                color: Colors.lightBlue[400],
                borderRadius: BorderRadius.circular(20.0)),
            child: Padding(
              padding: const EdgeInsets.only(top: 4.0, bottom: 8.0),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.Presetting2Page);
                },
                child: const Text(
                  "Acceder",
                  style: TextStyle(color: kDefaultIconLightColor, fontSize: 18),
                ),
              ),
            ),
          ),
        ]),
      ),
    ));
  }
}
