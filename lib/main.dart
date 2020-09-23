import 'package:flutter/material.dart';

import './widgets/novo_pedido.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pedidos embramaco'),
          backgroundColor: Color(0xff001C4D),
        ),
        body: Container(
          color: Colors.grey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              NovoPedido(),
            ],
          ),
        ),
      ),
    );
  }
}
