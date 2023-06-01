import 'package:first_app_flutter/Routes/routes.dart';
import 'package:first_app_flutter/theme.dart';
import 'package:flutter/material.dart';

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
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.1,
          color: Colors.blue,
        ),
        const SizedBox(
          height: 20,
        ),
        // ignore: avoid_unnecessary_containers
        Container(
          child: const Center(
            child: Text(
              'Nivel de Actividad',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Column(
          children: [
            _buildButtonColumn(
                0,
                "Poco o ningun ejercicio",
                const Icon(
                  Icons.directions_walk,
                  size: 50,
                  color: kWhiteColor,
                )),
            _buildButtonColumn(
                1,
                "Ejercicio ligero (1-3 días)",
                const Icon(
                  Icons.directions_bike,
                  size: 50,
                  color: kWhiteColor,
                )),
            _buildButtonColumn(
                2,
                "Ejercicio Moderado(3-5 días)",
                const Icon(
                  Icons.directions_run,
                  size: 50,
                  color: kWhiteColor,
                )),
            _buildButtonColumn(
                3,
                "Ejercicio fuerte (6-7 días)",
                const Icon(
                  Icons.fitness_center,
                  size: 50,
                  color: kWhiteColor,
                )),
            _buildButtonColumn(
                4,
                "Ejercicio Intenso (2 vcs x día)",
                const Icon(
                  Icons.accessibility_new,
                  size: 50,
                  color: kWhiteColor,
                )),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 18.0),
              width: MediaQuery.of(context).size.width * .4,
              decoration: BoxDecoration(
                  color: Colors.lightBlue[500],
                  borderRadius: BorderRadius.circular(20.0)),
              child: Padding(
                padding: const EdgeInsets.only(top: 2.0, bottom: 4.0),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.Presetting2Page);
                  },
                  child: const Text(
                    "Acceder",
                    style:
                        TextStyle(color: kDefaultIconLightColor, fontSize: 22),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    )));
  }

  Widget _buildButtonColumn(int index, String text, Icon icon) {
    final isSelected = _selectedButtonIndex == index;

    // ignore: sized_box_for_whitespace
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      width: MediaQuery.of(context).size.width * 0.78,
      child: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 6),
        child: TextButton(
          onPressed: () {
            _selectButton(index);
          },
          style: TextButton.styleFrom(
            backgroundColor: isSelected ? Colors.blue : Colors.grey[400],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
          ),
          child: Row(
            children: [
              icon,
              const SizedBox(
                width: 10,
              ),
              Text(
                text,
                style: const TextStyle(
                    color: kDefaultIconLightColor, fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
