/**🧪 Exercício 1: Saudação personalizada

Crie uma função que receba um nome como parâmetro e exiba uma saudação do tipo:
"Olá, [nome]! Seja bem-vindo."
 */

void main(List<String> args) {
  String nome = "Rhuan";
  saudacao(nome);
}

void saudacao(String nome) {
  print("Olá, $nome! Seja bem-vindo.");
}
