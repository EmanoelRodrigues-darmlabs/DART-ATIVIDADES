import 'empregado.dart';

class Operario extends Empregado {
  double _valorProducao;
  double _comissao; 

  Operario() : _valorProducao = 0.0, _comissao = 0.0, super();

  Operario.full(
    String nome,
    String endereco,
    String telefone,
    int codigoSetor,
    double salarioBase,
    double imposto,
    this._valorProducao,
    this._comissao,
  ) : super.full(nome, endereco, telefone, codigoSetor, salarioBase, imposto);

  double get valorProducao => _valorProducao;
  double get comissao => _comissao;

  set valorProducao(double v) => _valorProducao = v;
  set comissao(double c) => _comissao = c;

  @override
  double calcularSalario() {
    double salarioEmpregado = super.calcularSalario();
    double valorComissao = (_comissao / 100) * _valorProducao;
    return salarioEmpregado + valorComissao;
  }

  @override
  String toString() =>
      'Operario(${super.toString()}, valorProducao: $_valorProducao, comissao: $_comissao)';
}
