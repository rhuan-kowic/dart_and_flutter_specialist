/**
 * 🟢 3. Loja de camisetas

Crie variáveis para:
    Preço da camiseta
    Quantidade comprada
    Valor total
Mostre na tela o valor final com uma mensagem.
Depois, mude a quantidade e simule o novo total.
 */

void main(List<String> args) {
  double precoCamiseta = 60;
  int quantidadeCamiseta = 3;
  double valorTotal = precoCamiseta * quantidadeCamiseta;
  print("Valor total: R\$$valorTotal");
  quantidadeCamiseta = 10;
  valorTotal = precoCamiseta * quantidadeCamiseta;
  print("Valor total: R\$$valorTotal");
}
