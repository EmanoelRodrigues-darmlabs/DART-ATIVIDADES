import 'empregado.dart';

class Administrador extends Empregado {
  double _ajudaDeCusto;

  Administrador() : _ajudaDeCusto = 0.0, super();

  Administrador.full(
    String nome,
    String endereco,
    String telefone,
    int codigoSetor,
    double salarioBase,
    double imposto,
    this._ajudaDeCusto,
  ) : super.full(nome, endereco, telefone, codigoSetor, salarioBase, imposto);

  double get ajudaDeCusto => _ajudaDeCusto;
  set ajudaDeCusto(double a) => _ajudaDeCusto = a;

  @override
  double calcularSalario() {
    return super.calcularSalario() + _ajudaDeCusto;
  }

  @override
  String toString() =>
      'Administrador(${super.toString()}, ajudaDeCusto: $_ajudaDeCusto)';
}
