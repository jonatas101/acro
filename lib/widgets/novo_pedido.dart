import 'package:acro/widgets/date_picker.dart';
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
                    onPressed: () {},
                    child: Text('add'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
