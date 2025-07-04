/**
 * 🧪 Exercício 5: Função de boas-vindas com horário
Crie uma função que receba o nome de uma pessoa e a hora do dia (manhã, tarde ou noite) e retorne uma saudação apropriada.
 */
void main(List<String> args) {
  print(saudacao("Rhuan", DateTime(2025, 12, 31, 18, 00)));
}

String saudacao(String nome, DateTime data) {
  int horas = data.hour;
  String resultado = "";
  if (horas < 6) {
    resultado = "Boa madrugada";
  } else if (horas < 12) {
    resultado = "Bom dia";
  } else if (horas < 18) {
    resultado = "Boa tarde";
  } else {
    resultado = "Boa noite";
  }

  return "$resultado, $nome";
}
