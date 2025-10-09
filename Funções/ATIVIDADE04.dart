List<num> maximoMinimo(List<num> numeros) {
  if (numeros.isEmpty) throw ArgumentError('Lista vazia');
  num max = numeros.first;
  num min = numeros.first;
  for (final numero in numeros.skip(1)) {
    if (numero > max) max = numero;
    if (numero < min) min = numero;
  }
  return [max, min];
}

void main() {
  final lista = [4, 7, 2, 8, 10, 3];
  print(maximoMinimo(lista));
}
