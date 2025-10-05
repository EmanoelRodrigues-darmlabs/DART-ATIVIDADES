import 'dart:io';

void main() {
  stdout.write("Digite a fita de DNA: ");
  String dna = stdin.readLineSync()!.toUpperCase();

  String rna = dna
      .replaceAll("G", "c")
      .replaceAll("C", "g")
      .replaceAll("T", "a")
      .replaceAll("A", "u")
      .toUpperCase();

  print("Fita de RNA: $rna");
}
