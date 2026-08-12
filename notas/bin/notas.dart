import 'dart:io';

void main () {
  getComando();
  adicionaNota(notas);
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

List<String> notas = [];

List<String> adicionaNota(List<String> notas) {
  String? nota = "";
  print("Adicione uma nota:");
  nota = stdin.readLineSync();

  if (nota == null || nota.isEmpty) {
    print("Não é possível adicionar uma nota vazia.");
    adicionaNota(notas);
  } 
  
  notas.add(nota!);

  return notas;
}