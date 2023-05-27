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
  int _selectedButtonIndex = 0;

  void _selectButton(int index) {
    setState(() {
      _selectedButtonIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(children: [
          const Text(
            "Nivel de Actividad",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          // ignore: avoid_unnecessary_containers, sized_box_for_whitespace
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildButtonColumn(
                    0,
                    "Poco o ningun ejercicio",
                    const Icon(
                      FontAwesomeIcons.couch,
                      color: kDefaultIconLightColor,
                    )),
                _buildButtonColumn(
                    1,
                    "Ejercicio ligero (1-3 días)",
                    const Icon(
                      FontAwesomeIcons.airbnb,
                      color: kDefaultIconLightColor,
                    )),
                _buildButtonColumn(
                    2,
                    "Ejercicio Moderado(3-5 días)",
                    const Icon(
                      FontAwesomeIcons.walkieTalkie,
                      color: kDefaultIconLightColor,
                    )),
                _buildButtonColumn(
                    3,
                    "Ejercicio fuerte (6-7 días)",
                    const Icon(
                      FontAwesomeIcons.personWalking,
                      color: kDefaultIconLightColor,
                    )),
                _buildButtonColumn(
                    4,
                    "Ejercicio Intenso (2 vcs x día)",
                    const Icon(
                      FontAwesomeIcons.hardDrive,
                      color: kDefaultIconLightColor,
                    )),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 4.0),
            width: MediaQuery.of(context).size.width * .4,
            decoration: BoxDecoration(
                color: Colors.lightBlue[400],
                borderRadius: BorderRadius.circular(20.0)),
            child: Padding(
              padding: const EdgeInsets.only(top: 2.0, bottom: 4.0),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.Presetting2Page);
                },
                child: const Text(
                  "Acceder",
                  style: TextStyle(color: kDefaultIconLightColor, fontSize: 22),
                ),
              ),
            ),
          ),
        ]),
      ),
    ));
  }

  Widget _buildButtonColumn(int index, String text, Icon icon) {
    final isSelected = _selectedButtonIndex == index;

    // ignore: sized_box_for_whitespace
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 25.0),
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 6),
        child: TextButton(
          onPressed: () {
            _selectButton(index);
          },
          style: TextButton.styleFrom(
            backgroundColor: isSelected ? Colors.blue : Colors.grey,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Espacio entre el icono y el texto
              Text(
                text,
                style: const TextStyle(
                    color: kDefaultIconLightColor, fontSize: 18),
              ),
              const SizedBox(
                width: 10,
              ),
              icon
            ],
          ),
        ),
      ),
    );
  }
}
