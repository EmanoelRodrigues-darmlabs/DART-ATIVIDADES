import 'dart:io';

void main() {
  stdout.write("Diga algo para Bob: ");
  String fala = stdin.readLineSync()!;

  if (fala.isEmpty) {
    print("Tudo bem. Seja desse jeito!");
  } else if (fala == fala.toUpperCase() && fala.endsWith("?")) {
    print("Calma, eu sei o que estou fazendo!");
  } else if (fala == fala.toUpperCase()) {
    print("Uau, relaxe!");
  } else if (fala.endsWith("?")) {
    print("Ok.");
  } else {
    print("Tanto faz.");
  }
}
