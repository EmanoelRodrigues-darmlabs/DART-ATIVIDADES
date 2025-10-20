import 'empregado.dart';

class Vendedor extends Empregado {
  double _valorVendas;
  double _comissao;

  Vendedor() : _valorVendas = 0.0, _comissao = 0.0, super();

  Vendedor.full(
    String nome,
    String endereco,
    String telefone,
    int codigoSetor,
    double salarioBase,
    double imposto,
    this._valorVendas,
    this._comissao,
  ) : super.full(nome, endereco, telefone, codigoSetor, salarioBase, imposto);

  double get valorVendas => _valorVendas;
  double get comissao => _comissao;

  set valorVendas(double v) => _valorVendas = v;
  set comissao(double c) => _comissao = c;

  @override
  double calcularSalario() {
    double salarioEmpregado = super.calcularSalario();
    double valorComissao = (_comissao / 100) * _valorVendas;
    return salarioEmpregado + valorComissao;
  }

  @override
  String toString() =>
      'Vendedor(${super.toString()}, valorVendas: $_valorVendas, comissao: $_comissao)';
}
