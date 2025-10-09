double desconto(double preco, [double percentual = 0.10]) {
  final percentualConvertido = percentual > 1 ? percentual / 100 : percentual;
  return preco * (1 - percentualConvertido);
}

void main() {
  print(desconto(100)); 
  print(desconto(200, 0.15));
  print(desconto(200, 15)); 
}
