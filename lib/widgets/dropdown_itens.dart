import 'package:flutter/material.dart';

class ItensDropdown extends StatefulWidget {
  @override
  _ItensDropdownState createState() => _ItensDropdownState();
}

class _ItensDropdownState extends State<ItensDropdown> {
  @override
  Widget build(BuildContext context) {
    String _dropdownValue = 'itens';
    return Container(
      child: Row(
        children: [
          DropdownButton<String>(
            value: _dropdownValue,
            icon: Icon(Icons.arrow_circle_down_rounded),
            iconSize: 24,
            elevation: 16,
            onChanged: (String newItem) {
              setState(() {
                _dropdownValue = newItem;
              });
            },
            items: <String>[
              'itens',
              'CE-5229',
              'CIK-AM1459',
              'CIK-AZ1111',
              'CIK-MA5455',
              'CIK-NE6118',
              'CIK-PL0101',
              'CIK-PL0115',
              'ET-121/7138',
              'ET-129/7315',
              'ET-129/7620',
              'ET129/7381',
              'ET-129/7617',
              'M-535/1051',
              'M-622/138',
              'M-85/542',
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
