/*
🟡 2. Cadastro de produto
Imagine um sistema de estoque.
Crie variáveis para representar:
    O nome de um produto
    A quantidade disponível
    O preço
    Se o produto está disponível em estoque
Depois, mostre todas essas informações de forma organizada.
*/

void main(List<String> args) {
  String nomeProduto = "Notebook";
  int qtdProduto = 4;
  double precoProduto = 4565.90;
  bool produtoDisponivel = true;

  print(
    "Nome produto: $nomeProduto, quantidadeDeProduto: $qtdProduto, Preço: $precoProduto, produtoDisponivel: $produtoDisponivel",
  );
}
