import 'dart:io';

import 'package:agenda_de_compromissos/models/compromisso_agendado.dart';
import 'package:intl/intl.dart';

void agendaDeCompromissos() {
  print("Bem-vindo ao agenda de compromissos");
  List<CompromissoAgendado> listaDeCompromisso = [
    CompromissoAgendado(
      nome: "Estudar Dart",
      dataHorario: DateTime(2025, 7, 10, 6, 30),
      descricao: "Ver no Notion, qual material estudar",
    ),
  ];
  adicionarCompromissoAgendado(listaDeCompromisso);
  listarCompromissoAgendadado(listaDeCompromisso);
}

void listarCompromissoAgendadado(
  List<CompromissoAgendado> listaDeCompromisso,
) {
  int contador = 0;
  for (var compromisso in listaDeCompromisso) {
    print("indice: $contador, ${compromisso.toString()}");
    contador++;
  }
}

void adicionarCompromissoAgendado(
  List<CompromissoAgendado> listaDeCompromisso,
) {
  print("Digite o nome do compromisso: ");
  String? nomeDoCompromisso = stdin.readLineSync();

  if (nomeDoCompromisso == null) {
    print("Nome do compromisso invalido.");
    return;
  }

  print(
    "Digite a data e horario do compromisso. Utilize este padrao: (09/07/2025 21:45): ",
  );
  DateTime? dataFormatada;
  String? dataHoraString = stdin.readLineSync();

  if (dataHoraString == null) {
    print("Data e horario do compromisso invalido.");
    return;
  }
  try {
    DateFormat formato = DateFormat("dd/MM/yyyy HH:mm");
    dataFormatada = formato.parseStrict(dataHoraString);
  } catch (e) {
    print("Error: $e");
  }

  print("Digite a descricao do compromisso(opcional)");
  String? descricao = stdin.readLineSync();


  CompromissoAgendado compromisso = CompromissoAgendado(
    nome: nomeDoCompromisso,
    dataHorario: dataFormatada,
    descricao: descricao?.isEmpty == true ? null : descricao,
  );

  listaDeCompromisso.add(compromisso);
}
