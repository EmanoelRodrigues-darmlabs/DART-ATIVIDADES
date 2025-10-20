import 'animal.dart';

class Cavalo extends Animal {
  Cavalo(String nome) : super(nome);

  @override
  void emitirSom() {
    print('$nome: Hiiii!');
  }

  @override
  void correr() {
    print('$nome (cavalo) galopa velozmente.');
  }
}
