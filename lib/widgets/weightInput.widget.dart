import 'package:flutter/material.dart';

class WeightInputWidget extends StatefulWidget {
  final Function(double)? onChanged;

  const WeightInputWidget({Key? key, this.onChanged}) : super(key: key);

  @override
  State<WeightInputWidget> createState() => _WeightInputWidgetState();
}

class _WeightInputWidgetState extends State<WeightInputWidget> {
  late TextEditingController _textEditingController;
  bool _isValid = true;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
    _textEditingController.addListener(_validateInput);
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  void _validateInput() {
    final inputText = _textEditingController.text;
    final parsedValue = double.tryParse(inputText);
    final isValid = parsedValue != null && parsedValue >= 35;
    setState(() {
      _isValid = isValid;
    });
    if (isValid && widget.onChanged != null) {
      widget.onChanged!(parsedValue);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
          maxWidth: 300), // Establece el ancho máximo deseado
      child: SizedBox(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Flexible(
                child: TextField(
                  controller: _textEditingController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Peso (kg)',
                    errorText:
                        _isValid ? null : 'Valor inválido o mayor a 35 kg',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
