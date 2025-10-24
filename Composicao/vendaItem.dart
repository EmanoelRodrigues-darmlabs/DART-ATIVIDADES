import 'produto.dart';

class VendaItem {
  final Produto produto;
  int quantidade;
  double _preco;

  VendaItem({required this.produto, this.quantidade = 1})
    : _preco = produto.precoComDesconto;

  double get preco => _preco;

  set preco(double value) {
    if (value > 0) _preco = value;
  }
}
