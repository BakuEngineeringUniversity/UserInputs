import 'package:flutter/material.dart';

class RadioButtonExample extends StatefulWidget {
  @override
  _RadioButtonExampleState createState() => _RadioButtonExampleState();
}

class _RadioButtonExampleState extends State<RadioButtonExample> {
  int _selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Button Example'),
      ),
      body: Column(
        children: [
          RadioListTile(
            title: Text('Option 1'),
            value: 1,
            groupValue: _selectedValue,
            onChanged: (newValue) {
              setState(() {
                _selectedValue = newValue!;
              });
            },
          ),
          RadioListTile(
            title: Text('Option 2'),
            value: 2,
            groupValue: _selectedValue,
            onChanged: (newValue) {
              setState(() {
                _selectedValue = newValue!;
              });
            },
          ),
          RadioListTile(
            title: Text('Option 3'),
            value: 3,
            groupValue: _selectedValue,
            onChanged: (newValue) {
              setState(() {
                _selectedValue = newValue!;
              });
            },
          ),
        ],
      ),
    );
  }
}
