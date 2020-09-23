import 'package:flutter/material.dart';

class NovoPedido extends StatelessWidget {
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
                      icon: Icon(Icons.airport_shuttle),
                      hintText: 'número do pedido',
                    ),
                  ),
                ),
              ],
            ),
            Text('novo pedido'),
            Text('novo pedido'),
            Text('novo pedido'),
          ],
        ),
      ),
    );
  }
}
