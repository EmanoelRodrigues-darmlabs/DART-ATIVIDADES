import 'cliente.dart';
import 'produto.dart';
import 'vendaItem.dart';
import 'venda.dart';

void main() {
  final cliente = Cliente(nome: 'João Silva', cpf: 12345678901);

  final produto = Produto(codigo: 1, nome: 'Teclado', preco: 150.0, desconto: 0.1);
  final outroProduto = Produto(codigo: 2, nome: 'Mouse', preco: 80.0);

  final item = VendaItem(produto: produto, quantidade: 2);
  final outroItem = VendaItem(produto: outroProduto, quantidade: 1);

  final venda = Venda(cliente: cliente, itens: [item, outroItem]);

  print(venda);
}
