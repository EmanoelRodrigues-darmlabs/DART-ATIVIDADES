import 'animal.dart';

class Veterinario {
  void examinar(Animal a) {
    print('Veterinário examinando ${a.nome}...');
    a.emitirSom();
  }
}
