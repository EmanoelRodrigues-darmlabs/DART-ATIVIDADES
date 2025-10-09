int energiaGanha({required int nivel, required List<int> itens}) {
  if (nivel <= 0) return 0;

  final multiplosUnicos = <int>{};

  for (final valorBase in itens) {
    if (valorBase == 0) continue; 

    for (
      int multiploAtual = valorBase;
      multiploAtual < nivel;
      multiploAtual += valorBase
    ) {
      multiplosUnicos.add(multiploAtual);
    }
  }

  final somaDosMultiplos = multiplosUnicos.fold(
    0,
    (soma, numero) => soma + numero,
  );

  return somaDosMultiplos;
}

void main() {
  final pontos = energiaGanha(nivel: 20, itens: [3, 5]);
  print('Pontos de energia ganhos: $pontos'); // 78
}
