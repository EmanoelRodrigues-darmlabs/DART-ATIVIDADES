import 'pessoa.dart';

class Empregado extends Pessoa {
  int _codigoSetor;
  double _salarioBase;
  double _imposto;

  Empregado() : _codigoSetor = 0, _salarioBase = 0.0, _imposto = 0.0, super();

  Empregado.full(
    String nome,
    String endereco,
    String telefone,
    this._codigoSetor,
    this._salarioBase,
    this._imposto,
  ) : super.full(nome, endereco, telefone);

  Empregado.byCode(int codigoSetor, double salarioBase)
    : _codigoSetor = codigoSetor,
      _salarioBase = salarioBase,
      _imposto = 0.0,
      super();

  int get codigoSetor => _codigoSetor;
  double get salarioBase => _salarioBase;
  double get imposto => _imposto;

  set codigoSetor(int c) => _codigoSetor = c;
  set salarioBase(double s) => _salarioBase = s;
  set imposto(double i) => _imposto = i;

  double calcularSalario() {
    return _salarioBase * (1 - _imposto / 100);
  }

  @override
  String toString() =>
      'Empregado(${super.toString()}, codigoSetor: $_codigoSetor, salarioBase: $_salarioBase, imposto: $_imposto)';
}
