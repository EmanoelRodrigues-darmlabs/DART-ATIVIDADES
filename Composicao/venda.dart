import 'cliente.dart';
import 'vendaItem.dart';

class Venda {
  final Cliente cliente;
  final List<VendaItem> itens;

  Venda({required this.cliente, List<VendaItem>? itens}) : itens = itens ?? [];

  double get valorTotal =>
      itens.fold(0.0, (sum, item) => sum + item.preco * item.quantidade);

  @override
  String toString() {
    final buffer = StringBuffer();
    buffer.writeln('Resumo da venda');
    buffer.writeln('Cliente: ${cliente.nome}');
    buffer.writeln('Itens:');
    for (var i = 0; i < itens.length; i++) {
      final it = itens[i];
      buffer.writeln(
        '${i + 1} - ${it.produto.nome} (codigo: ${it.produto.codigo}) x${it.quantidade} = R\$ ${(it.preco * it.quantidade).toStringAsFixed(2)}',
      );
    }
    buffer.writeln('Total: R\$ ${valorTotal.toStringAsFixed(2)}');
    return buffer.toString();
  }
}
