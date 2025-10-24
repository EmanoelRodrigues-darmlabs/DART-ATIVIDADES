class Produto {
  final int codigo;
  final String nome;
  final double preco;
  final double desconto;

  Produto({
    required this.codigo,
    required this.nome,
    required this.preco,
    this.desconto = 0,
  });

  double get precoComDesconto => preco * (1 - desconto);
}
