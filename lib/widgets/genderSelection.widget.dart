import 'package:flutter/material.dart';

class GenderSelectionWidget extends StatefulWidget {
  final Function(String?) onGenderSelected;

  const GenderSelectionWidget({Key? key, required this.onGenderSelected})
      : super(key: key);

  @override
  State<GenderSelectionWidget> createState() => _GenderSelectionWidgetState();
}

class _GenderSelectionWidgetState extends State<GenderSelectionWidget> {
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListTile(
            title: const Text('Masculino'),
            leading: Radio(
              value: 'Masculino',
              groupValue: selectedGender,
              onChanged: (value) {
                setState(() {
                  selectedGender = value;
                  widget.onGenderSelected(selectedGender);
                });
              },
            ),
          ),
        ),
        Expanded(
          child: ListTile(
            title: const Text('Femenino'),
            leading: Radio(
              value: 'Femenino',
              groupValue: selectedGender,
              onChanged: (value) {
                setState(() {
                  selectedGender = value;
                  widget.onGenderSelected(selectedGender);
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
