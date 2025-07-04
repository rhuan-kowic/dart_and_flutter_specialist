/**
 * 🧪 Exercício 3: Verificar maioridade
Crie uma função que receba uma idade e retorne se a pessoa é maior de idade ou não.
 */

void main(List<String> args) {
  int idade = 17;
  String resultado = eMaiorDeIdade(idade) ? "sim" : "nao";
  print("Resultado: $resultado");
}

bool eMaiorDeIdade(int idade) {
  if (idade >= 18) {
    return true;
  } else {
    return false;
  }
}
