import 'package:flutter/material.dart';

class DropdownScreen extends StatefulWidget {
  const DropdownScreen({super.key});

  @override
  State<DropdownScreen> createState() => _DropdownScreenState();
}

class _DropdownScreenState extends State<DropdownScreen> {
  var _selectedBox;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown Concept'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
              value: _selectedBox,
                hint: Text('Dropdown Option'),
                items: <String>['option1','option2'].map((String value) {
                  return DropdownMenuItem(
                    value: value,
                      child: Text(value));
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedBox = value;
                  });
                },)
          ],
        ),
      ),
    );
  }
}
