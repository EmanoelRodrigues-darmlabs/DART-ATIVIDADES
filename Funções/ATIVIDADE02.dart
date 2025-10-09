double soma(double numero, double outroNumero) => numero + outroNumero;

double media(List<double> numeros) {
  if (numeros.isEmpty) throw ArgumentError('Lista vazia');
  final total = numeros.reduce((acc, n) => soma(acc, n));
  return total / numeros.length;
}

void main() {
  final nums = [7.0, 8.0, 9.0, 6.0];
  print('Média: ${media(nums)}'); 
}
