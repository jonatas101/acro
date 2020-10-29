import 'package:flutter/material.dart';
import 'dart:html';

import '../widgets/date_picker.dart';
import '../widgets/dropdown_itens.dart';

class NovoPedido extends StatefulWidget {
  @override
  _NovoPedidoState createState() => _NovoPedidoState();
}

class _NovoPedidoState extends State<NovoPedido> {
  Future<void> _novoItem() async {
    return showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Novo Item'),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ItensDropdown(),
                    ],
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                child: Text('save'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      child: Card(
        elevation: 6,
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              color: Color(0xff001C4D),
              child: Text('Novo pedido',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  )),
            ),
            Row(
              children: [
                Container(
                  width: 200,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.airport_shuttle,
                        color: Color(0xff0B3669),
                      ),
                      hintText: 'Número do pedido',
                    ),
                  ),
                ),
                Calendar(),
              ],
            ),
            Text('novo item'),
            Text('novo item'),
            Text('novo item'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FlatButton(
                    textColor: Colors.blue,
                    onPressed: () {},
                    child: Text('save')),
                FlatButton(
                    textColor: Colors.blue,
                    onPressed: _novoItem,
                    child: Text('add'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
