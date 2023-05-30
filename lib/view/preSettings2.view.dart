import 'package:first_app_flutter/Routes/routes.dart';
// import 'package:first_app_flutter/widgets/agePicker.widget.dart';
import 'package:first_app_flutter/widgets/genderSelection.widget.dart';
import 'package:first_app_flutter/widgets/weightInput.widget.dart';

import 'package:flutter/material.dart';

import 'package:first_app_flutter/data/ages.dart';
import 'package:flutter/cupertino.dart';

class PreSettings2View extends StatefulWidget {
  const PreSettings2View({super.key});

  @override
  State<PreSettings2View> createState() => _PreSettings2ViewState();
}

class _PreSettings2ViewState extends State<PreSettings2View> {
  int _selectedButtonIndex = 0;
  String? selectedGender;
  void _selectButton(int index) {
    setState(() {
      _selectedButtonIndex = index;
    });
  }

  bool isGenderSelected() {
    return selectedGender != null;
  }

  double? enteredWeight;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Comidas al dia",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
                    ),
                  ),
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
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Edad",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                const AgePicker(),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Genero",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                GenderSelectionWidget(
                  onGenderSelected: (gender) {
                    setState(() {
                      selectedGender = gender;
                    });
                  },
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Peso",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                WeightInputWidget(
                  onChanged: (weight) {
                    setState(() {
                      enteredWeight = weight;
                    });
                  },
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
                        if ((isGenderSelected() &&
                            enteredWeight != null &&
                            enteredWeight! >= 35)) {
                          Navigator.pushNamed(context, Routes.Homepage);
                        } else {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text(
                                  'Error',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22),
                                ),
                                content: const Text(
                                  'Por favor, selecciona un género antes de continuar y un peso correcto mayor que 35.',
                                  style: TextStyle(color: Colors.red),
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text('Aceptar'),
                                  ),
                                ],
                              );
                            },
                          );
                        }
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
        backgroundColor:
            isSelected ? Colors.blue : const Color.fromARGB(255, 219, 219, 219),
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

class AgePicker extends StatefulWidget {
  const AgePicker({super.key});

  @override
  State<AgePicker> createState() => _AgePickerState();
}

class _AgePickerState extends State<AgePicker> {
  late FixedExtentScrollController scrollController;
  int index = 4;

  @override
  void initState() {
    super.initState();
    scrollController = FixedExtentScrollController(initialItem: index);
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 40, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              items[index],
              style: const TextStyle(fontSize: 48, fontWeight: FontWeight.w400),
            ),
          ),
          CupertinoButton.filled(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Text("Cambiar Edad"),
            onPressed: () {
              scrollController.dispose();
              scrollController =
                  FixedExtentScrollController(initialItem: index);
              showCupertinoModalPopup(
                context: context,
                builder: (context) => CupertinoActionSheet(
                  actions: [
                    buildPicker(),
                  ],
                  cancelButton: CupertinoActionSheetAction(
                    child: const Text("Cancelar"),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget buildPicker() => SizedBox(
        height: 350,
        child: CupertinoPicker(
          scrollController: scrollController,
          itemExtent: 64,
          selectionOverlay: CupertinoPickerDefaultSelectionOverlay(
            background: CupertinoColors.activeBlue.withOpacity(0.2),
          ),
          children: List.generate(items.length, (index) {
            final item = items[index];
            return Builder(
              builder: (BuildContext context) {
                final isSelected = this.index == index;
                final color =
                    isSelected ? CupertinoColors.black : CupertinoColors.black;
                return Center(
                  child:
                      Text(item, style: TextStyle(color: color, fontSize: 32)),
                );
              },
            );
          }),
          onSelectedItemChanged: (index) {
            if (index >= 0 && index < items.length) {
              setState(() {
                this.index = index;
              });
              final item = items[index];
              // ignore: avoid_print
              print('item: $item');
            }
          },
        ),
      );
}
