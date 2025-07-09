import 'package:agenda_de_compromissos/models/compromisso_agendado.dart';

void agendaDeCompromissos() {
  print("Bem-vindo ao agenda de compromissos");
  List<CompromissoAgendado> listaDeCompromisso = [
    CompromissoAgendado(
      nome: "Estudar Dart",
      dataHorario: DateTime(2025, 7, 10, 6, 30),
      descricao: "Ver no Notion, qual meterial estudar",
    ),
  ];
  listarCompromissoAgendadados(listaDeCompromisso);
}

void listarCompromissoAgendadados(
  List<CompromissoAgendado> listaDeCompromisso,
) {
  int contador = 0;
  for (var compromisso in listaDeCompromisso) {
    print("indice: $contador, ${compromisso.toString()}");
    contador++;
  }
}
