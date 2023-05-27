import 'package:first_app_flutter/Routes/routes.dart';
import 'package:flutter/material.dart';

class PreSettings2View extends StatefulWidget {
  const PreSettings2View({super.key});

  @override
  State<PreSettings2View> createState() => _PreSettings2ViewState();
}

class _PreSettings2ViewState extends State<PreSettings2View> {
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
          child: Column(
            children: [
              const Text(
                "Comidas al dia",
                style: TextStyle(fontSize: 32),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildButtonRow(0, 2),
                    _buildButtonRow(1, 3),
                    _buildButtonRow(2, 4),
                    _buildButtonRow(3, 5),
                  ],
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
                      Navigator.pushNamed(context, Routes.Homepage);
                    },
                    child: const Text(
                      "Acceder",
                      style: TextStyle(
                          color: kDefaultIconLightColor, fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButtonRow(int index, int number) {
    final isSelected = _selectedButtonIndex == index;

    return TextButton(
      onPressed: () {
        _selectButton(index);
      },
      style: TextButton.styleFrom(
        backgroundColor: isSelected ? Colors.blue : Colors.grey,
        shape: const CircleBorder(),
      ),
      child: Text(
        '$number',
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    );
  }
}
