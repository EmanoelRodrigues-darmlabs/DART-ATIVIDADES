import 'dart:io';

void main() {
  stdout.write("Digite seu nome: ");
  String nome = stdin.readLineSync()!;
  
  stdout.write("Digite sua idade: ");
  int idade = int.parse(stdin.readLineSync()!);

  print("Olá $nome, você tem $idade anos.");

  int anoAtual = 2025;
  int anoNascimento = anoAtual - idade;
  print("Você nasceu em $anoNascimento.");

  for (int ano = anoNascimento; ano <= anoAtual; ano++) {
    int idadeNoAno = ano - anoNascimento;
    print("No ano de $ano você ${idadeNoAno == 0 ? "nasceu" : "tinha $idadeNoAno ano(s)"}.");
  }

  int falta = 100 - idade;
  print("Faltam $falta anos para você completar 100 anos.");
}
