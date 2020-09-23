import '../models/item_list.dart';

class Pedido {
  final int numero;
  final Item item;
  final DateTime data;

  Pedido({this.numero, this.item, this.data});
}
