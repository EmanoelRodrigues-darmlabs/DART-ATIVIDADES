abstract class Animal {
  String nome;

  Animal(this.nome);

  void emitirSom();

  void correr() {
    print('$nome está correndo.');
  }

  @override
  String toString() => 'Animal(nome: $nome)';
}
