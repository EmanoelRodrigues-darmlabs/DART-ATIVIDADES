import 'animal.dart';

class Preguica extends Animal {
  Preguica(String nome) : super(nome);

  @override
  void emitirSom() {
    print('$nome: ... (som de preguiça)');
  }

  @override
  void correr() {
    print('$nome (preguiça) não gosta de correr.');
  }
}
