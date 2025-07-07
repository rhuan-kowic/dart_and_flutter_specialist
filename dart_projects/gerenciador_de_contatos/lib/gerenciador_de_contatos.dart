import 'dart:io';

import 'package:gerenciador_de_contatos/models/contato.dart';
import 'package:gerenciador_de_contatos/utils/imprimir_menus.dart';

void gerenciadorDeContatos() {
  print("Bem vindos ao Gerenciador de Contatos");
  List<Contato> listaContatos = [
    Contato("Rhuan", "35 4444-4444", "rhuan@example.com"),
  ];
  bool continuarPrograma = true;
  while (continuarPrograma) {
    ImprimirMenus.imprimirMenu();
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
        editarContato(listaContatos);
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

  telefone = telefone.replaceAll(RegExp(r"[^\d]"), "");

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

void editarContato(List<Contato> contatos) {
  print("Digite o nome do contato que vai alterar: ");
  String? nome = stdin.readLineSync();

  if (nome == null || nome.trim().isEmpty) {
    print("Nome invalido");
    return;
  }

  Contato? contatoEncontrado;
  try {
    contatoEncontrado = contatos.firstWhere(
      (contato) =>
          contato.nome.toLowerCase().contains(nome.toLowerCase().trim()),
    );
  } catch (e) {
    contatoEncontrado = null;
  }

  if (contatoEncontrado == null) {
    print("Contato nao encontrado");
    return;
  }

  ImprimirMenus.imprimirMenuEdicao();
  print("Digite a opção selecionada:");
  String? opcaoSelecionada = stdin.readLineSync();
  int opcaoNumero = int.tryParse(opcaoSelecionada ?? "") ?? 0;

  print("Digite o novo valor: ");
  String? novoValor = stdin.readLineSync();

  try {
    switch (opcaoNumero) {
      case 1:
        contatoEncontrado.nome = novoValor!;
        break;
      case 2:
        contatoEncontrado.telefone = novoValor!;
        break;
      case 3:
        contatoEncontrado.email = novoValor!;
      case 4:
        break;
      default:
        print("Opção invalída. Tente novamente");
    }
  } catch (e) {
    print("Erro ao editar contato: $e");
  }
}

void excluirContato() {
  // TODO: implementar o excluir contato na listaContatos
}
