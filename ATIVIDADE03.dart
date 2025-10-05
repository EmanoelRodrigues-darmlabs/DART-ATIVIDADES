import 'dart:io';

void main() {
  stdout.write("Digite um número: ");
  int numero = int.parse(stdin.readLineSync()!);

  print("Divisores de $numero:");
  for (int i = 1; i <= numero; i++) {
    if (numero % i == 0) {
      print(i);
    }
  }
}
