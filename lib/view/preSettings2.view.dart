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
                    _buildButton(0, 2),
                    _buildButton(1, 3),
                    _buildButton(2, 4),
                    _buildButton(3, 5),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton(int index, int number) {
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
