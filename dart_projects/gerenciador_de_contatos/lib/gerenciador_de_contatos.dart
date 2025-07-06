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
        adicionarContato(listaContatos);
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

void adicionarContato(List<Contato> listaContatos) {
  stdout.write("Digite o nome do contato: ");
  String? nome = stdin.readLineSync();

  if (nome == null || nome.trim().length < 3) {
    throw Exception("Nome inválido. Deve conter pelo menos 3 letras.");
  }

  stdout.write("Digite o telefone do contato: ");
  String? telefone = stdin.readLineSync();

  if (telefone == null) {
    throw Exception("Telefone inválido.");
  }

  telefone = telefone.replaceAll(
    RegExp(r"[^\d]"),
    "",
  ); 

  if (telefone.length < 10 || telefone.length > 11) {
    throw Exception("Telefone inválido. Deve conter 10 ou 11 dígitos.");
  }

  stdout.write("Digite o email do contato: ");
  String? email = stdin.readLineSync();

  if (email == null || !email.contains("@") || !email.contains(".com")) {
    throw Exception("Email inválido.");
  }

  Contato novoContato = Contato(nome.trim(), telefone, email.trim());
  listaContatos.add(novoContato);
  print("Contato adicionado com sucesso!\n");
}

void editarContato() {
  // TODO: implementar o editar contato em listaContatos
}

void excluirContato() {
  // TODO: implementar o excluir contato na listaContatos
}
