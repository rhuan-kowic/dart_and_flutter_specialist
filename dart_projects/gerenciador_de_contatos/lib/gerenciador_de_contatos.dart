import 'package:gerenciador_de_contatos/models/contato.dart';

void gerenciadorDeContatos() {
  print("Bem vindos ao Gerenciador de Contatos");
  List<Contato> contatos = [];
  Contato pessoa1Contato = Contato("Rhuan", "35 99999-9999", "rhuan@email.com");
  contatos.add(pessoa1Contato);
  print(contatos);
}
