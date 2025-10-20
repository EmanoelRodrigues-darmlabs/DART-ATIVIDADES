import 'fornecedor.dart';
import 'empregado.dart';
import 'administrador.dart';
import 'operario.dart';
import 'vendedor.dart';
import 'cachorro.dart';
import 'cavalo.dart';
import 'preguica.dart';
import 'veterinario.dart';
import 'zoologico.dart';

void main() {
  print('--- Teste Fornecedor ---');
  var f = Fornecedor.full('Loja X', 'Rua A, 123', '9999-9999', 5000.0, 1500.0);
  print(f);
  print('Saldo do fornecedor: ${f.obterSaldo()}');

  print('\n--- Teste Empregado ---');
  var emp = Empregado.full('Carlos', 'Av B, 10', '9888-7777', 5, 2500.0, 10.0);
  print(emp);
  print('Salário líquido: ${emp.calcularSalario()}');

  print('\n--- Teste Administrador ---');
  var adm = Administrador.full(
    'Mariana',
    'Rua C, 50',
    '9777-6666',
    1,
    4000.0,
    15.0,
    500.0,
  );
  print(adm);
  print('Salário administrador: ${adm.calcularSalario()}');

  print('\n--- Teste Operario ---');
  var op = Operario.full(
    'João',
    'Rua D, 20',
    '9666-5555',
    2,
    1800.0,
    5.0,
    2000.0,
    5.0,
  );
  print(op);
  print('Salário operário: ${op.calcularSalario()}');

  print('\n--- Teste Vendedor ---');
  var vend = Vendedor.full(
    'Ana',
    'Rua E, 30',
    '9555-4444',
    3,
    2200.0,
    12.0,
    10000.0,
    3.0,
  );
  print(vend);
  print('Salário vendedor: ${vend.calcularSalario()}');

  print('\n--- Teste Animais e Veterinário ---');
  var c = Cachorro('Rex');
  var ca = Cavalo('Thunder');
  var p = Preguica('Sid');

  var vet = Veterinario();
  vet.examinar(c);
  vet.examinar(ca);
  vet.examinar(p);

  print('\n--- Teste Zoológico ---');
  var zoo = Zoologico(10);
  zoo.colocarAnimal(0, c);
  zoo.colocarAnimal(1, ca);
  zoo.colocarAnimal(2, p);
  zoo.percorrerJaulas();

  print('\n--- Fim dos testes ---');
}
