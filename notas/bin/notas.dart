import 'dart:io';

void main () {
  getComando();
}

void getComando() {
  print("Digite um comando: 1 - Adicionar nota, 2 - Listar notas, 3 - Sair");
  String? entrada = "";
  List<String> comandos = ["1", "2", "3"];

  entrada = stdin.readLineSync();

  if (entrada == null || !comandos.contains(entrada)) {
    print("Comando inválido. Tente novamente.");
    getComando();
  }

}