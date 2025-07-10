class CompromissoAgendado {
  String _nome;
  DateTime _dataHorario;
  String? _descricao = "";

  CompromissoAgendado({required nome, required dataHorario, descricao = ""})
    : _nome = nome,
      _dataHorario = dataHorario,
      _descricao = descricao;

  String get nome => _nome;
  set nome(String nome) {
    if (nome.isEmpty) throw ArgumentError("Nome nao pode ser vazio");
    _nome = nome;
  }

  DateTime get dataHorario => _dataHorario;
  set dataHorario(DateTime dataHorario) => _dataHorario = dataHorario;

  String get descricao => _descricao.toString();
  set descricao(String descricao) => _descricao = descricao;

  @override
  String toString() {
    return "nome_do_compromisso: $nome, data_horario: $dataHorario, descricao: $descricao";
  }
}
