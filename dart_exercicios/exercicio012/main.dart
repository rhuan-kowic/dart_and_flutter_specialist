/**
 * Crie uma lista com nomes de 4 cidades. Depois, use um laço de repetição para imprimir todas as cidades uma por uma, junto com o número da posição.
    Exemplo de saída esperada:
        Cidade 1: São Paulo
        Cidade 2: Rio de Janeiro
        ...
 */

void main(List<String> args) {
  List<String> listaDeCidades = [
    "São Paulo",
    "Rio de Janeiro",
    "Lavras",
    "Itanhandu",
  ];

  for (int num = 0; num < listaDeCidades.length; num++) {
    print("Cidade ${num + 1}: ${listaDeCidades[num]}");
  }
}
