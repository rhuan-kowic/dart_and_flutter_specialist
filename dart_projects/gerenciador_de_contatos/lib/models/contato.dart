class Contato {
  String _nome;
  String _telefone;
  String _email;

  Contato(this._nome, this._telefone, this._email);

  String get nome => _nome;
  set nome(String nomeValor) => {
    if (nomeValor.length < 3 || nomeValor.isEmpty)
      {throw Exception("Nome inválido.")}
    else
      {_nome = nomeValor},
  };

  String get telefone => _telefone;
  set telefone(String telefoneValor) => _telefone = telefoneValor;

  String get email => _email;
  set email(String emailValor) => {
    if (emailValor.contains("@") && emailValor.contains(".com"))
      {_email = emailValor}
    else
      {throw Exception("Email inválido.")},
  };

  @override
  String toString() {
    return 'Nome: $nome, Telefone: $telefone, Email: $email';
  }
}
