import 'dart:async';

import 'package:flutter/material.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  DateTime selectedDate = DateTime.now();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        locale: const Locale('pt', 'BR'),
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2020, 9),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16),
            child: FlatButton(
              onPressed: () => _selectDate(context),
              child: Text(
                'Data da entrega',
                style: TextStyle(color: Color(0xff0B3669)),
              ),
            ),
          ),
          Text("${selectedDate.toLocal()}".split(' ')[0]),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
