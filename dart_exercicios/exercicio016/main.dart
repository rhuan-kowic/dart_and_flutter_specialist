/**
 * 🧪 Exercício 8: Criando lista de tarefas

Imagine que você está fazendo uma lista de tarefas do dia. Crie uma lista com 4 tarefas. Depois:
    Marque (remova) uma tarefa como feita
    Adicione uma nova tarefa no final
    Imprima a nova lista de tarefas
 */

void main(List<String> args) {
  List<String> listaTarefas = [
    "Ler",
    "Estudar Dart",
    "Estudar Flutter",
    "Estudar UX",
  ];
  listaTarefas.remove("Ler");
  listaTarefas.add("Tarefa aleatoria");

  for (int i = 0; i < listaTarefas.length; i++) {
    print("${i + 1}. ${listaTarefas[i]}");
  }
}
