import 'package:flutter/material.dart';

class CheckBoxExample extends StatefulWidget {
   const CheckBoxExample({super.key});

  @override
  CheckBoxExampleState createState() => CheckBoxExampleState();
}

class CheckBoxExampleState extends State<CheckBoxExample> {
  bool _isChecked = false;
  String _title = 'Check me!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Check Box Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CheckboxListTile(
          title: Text(_title),
          value: _isChecked,
          onChanged: (newValue) {
            setState(() {
              _isChecked = newValue!;
              _title = newValue ? 'Uncheck me!' : 'Check me!';
            });
          },
        ),
      ),
    );
  }
}
