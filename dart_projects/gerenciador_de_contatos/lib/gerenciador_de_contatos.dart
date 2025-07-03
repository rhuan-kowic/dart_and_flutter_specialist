import 'dart:io';

import 'package:gerenciador_de_contatos/models/contato.dart';

void gerenciadorDeContatos() {
  print("Bem vindos ao Gerenciador de Contatos");
  List<Contato> listaContatos = [
    Contato("Rhuan", "35 4444-4444", "rhuan@example.com"),
  ];
  bool continuarPrograma = true;
  while (continuarPrograma) {
    imprimirMenu();
    print("Digite a opção selecionada:");
    String? opcaoSelecionada = stdin.readLineSync();
    int opcaoNumero = int.tryParse(opcaoSelecionada ?? "") ?? 0;
    switch (opcaoNumero) {
      case 1:
        listarContatos(listaContatos);
        break;
      case 2:
        adicionarContato();
        break;
      case 3:
        editarContato();
        break;
      case 4:
        excluirContato();
        break;
      case 5:
        continuarPrograma = false;
        break;
      default:
        print("Opção invalída. Tente novamente");
    }
  }
}

void imprimirMenu() {
  print("\nMenu");
  print("-----------------------");
  print("1 - Listar Contatos");
  print("2 - Adicionar Contato");
  print("4 - Editar contato");
  print("4 - Excluir contato");
  print("5 - Sair");
  print("-----------------------");
}

void listarContatos(List<Contato> contatos) {
  if (contatos.isNotEmpty) {
    for (var contato in contatos) {
      print(contato);
    }
  } else {
    print("Sem contatos salvos.");
  }
}

void adicionarContato() {
  // TODO: implementar adicionar o contato na listaContatos
}

void editarContato() {
  // TODO: implementar o editar contato em listaContatos
}

void excluirContato() {
  // TODO: implementar o excluir contato na listaContatos
}
