class Pessoa {
  String _nome;
  String _endereco;
  String _telefone;

  Pessoa() : _nome = '', _endereco = '', _telefone = '';

  Pessoa.full(this._nome, this._endereco, this._telefone);

  Pessoa.nome(this._nome) : _endereco = '', _telefone = '';

  String get nome => _nome;
  String get endereco => _endereco;
  String get telefone => _telefone;

  set nome(String n) => _nome = n;
  set endereco(String e) => _endereco = e;
  set telefone(String t) => _telefone = t;

  @override
  String toString() =>
      'Pessoa(nome: $_nome, endereco: $_endereco, telefone: $_telefone)';
}
