import 'animal.dart';

class Zoologico {
  final List<Animal?> jaulas;

  Zoologico(int tamanho) : jaulas = List<Animal?>.filled(tamanho, null);

  void colocarAnimal(int indice, Animal a) {
    if (indice < 0 || indice >= jaulas.length) {
      throw RangeError('Índice fora das jaulas');
    }
    jaulas[indice] = a;
  }

  void percorrerJaulas() {
    for (int i = 0; i < jaulas.length; i++) {
      final a = jaulas[i];
      if (a == null) {
        print('Jaula $i: vazia');
      } else {
        print('Jaula $i: ${a.nome}');
        a.emitirSom();
        a.correr();
      }
    }
  }
}
