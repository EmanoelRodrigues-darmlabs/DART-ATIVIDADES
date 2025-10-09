int multiplicar(int numero, int outroNumero) => numero * outroNumero;

void main() {
  int Function(int, int) operacao = multiplicar;
  print(operacao(3, 4));
}
