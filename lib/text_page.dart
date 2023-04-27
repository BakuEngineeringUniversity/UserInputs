import 'package:flutter/material.dart';

class TextFieldExample extends StatefulWidget {
  const TextFieldExample({super.key});

  @override
  TextFieldExampleState createState() => TextFieldExampleState();
}

class TextFieldExampleState extends State<TextFieldExample> {
  String _inputValue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Field Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 32.0, left: 32),
        child: TextField(
          decoration: const InputDecoration(
            hintText: 'Enter your input here',
          ),
          onChanged: (value) {
            setState(() {
              _inputValue = value;
            });
          },
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: const EdgeInsets.all(32.0),
          child: Text('You entered: $_inputValue'),
        ),
      ),
    );
  }
}
