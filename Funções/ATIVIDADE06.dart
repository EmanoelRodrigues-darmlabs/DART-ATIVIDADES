String raindrops(int numero) {
  final resultado = StringBuffer();

  if (numero % 3 == 0) resultado.write('Pling');
  if (numero % 5 == 0) resultado.write('Plang');
  if (numero % 7 == 0) resultado.write('Plong');

  return resultado.isEmpty ? '$numero' : resultado.toString();
}

void main() {
  print(raindrops(28)); 
  print(raindrops(30)); 
  print(raindrops(34)); 
}
