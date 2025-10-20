import 'pessoa.dart';

class Fornecedor extends Pessoa {
  double _valorCredito;
  double _valorDivida;

  Fornecedor() : _valorCredito = 0.0, _valorDivida = 0.0, super();

  Fornecedor.full(
    String nome,
    String endereco,
    String telefone,
    this._valorCredito,
    this._valorDivida,
  ) : super.full(nome, endereco, telefone);

  Fornecedor.creditOnly(String nome, this._valorCredito)
    : _valorDivida = 0.0,
      super.nome(nome);

  double get valorCredito => _valorCredito;
  double get valorDivida => _valorDivida;

  set valorCredito(double v) => _valorCredito = v;
  set valorDivida(double v) => _valorDivida = v;

  double obterSaldo() => _valorCredito - _valorDivida;

  @override
  String toString() =>
      'Fornecedor(${super.toString()}, valorCredito: $_valorCredito, valorDivida: $_valorDivida, saldo: ${obterSaldo()})';
}
