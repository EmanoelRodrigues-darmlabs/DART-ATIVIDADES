void main() {
  int N = 10;

  int soma = 0;
  int somaQuadrados = 0;

  for (int i = 1; i <= N; i++) {
    soma += i;
    somaQuadrados += i * i;
  }

  int quadradoSoma = soma * soma;
  int diferenca = quadradoSoma - somaQuadrados;

  print("Diferença = $diferenca");
}
