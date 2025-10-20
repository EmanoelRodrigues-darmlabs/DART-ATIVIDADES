import 'animal.dart';

class Cachorro extends Animal {
  Cachorro(String nome) : super(nome);

  @override
  void emitirSom() {
    print('$nome: Au Au!');
  }

  @override
  void correr() {
    print('$nome (cachorro) corre alegremente.');
  }
}
