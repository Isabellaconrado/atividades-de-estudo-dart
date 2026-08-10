import 'dart:io';

void main() {
  double numeroUm = 0;
  double numeroDois = 0;
  String operacao = "";
  List<String> operacoes = ["+", "-", "*", "/"];

  void soma() {
    print(numeroUm + numeroDois);
  }

  void subtracao() {
    print(numeroUm - numeroDois);
  }

  void multiplicacao() {
    print(numeroUm * numeroDois);
  }

  void divisao() {
    print(numeroUm / numeroDois);
  }

  void calculadora() {
    switch (operacao) {
      case "+":
        soma();
        break;

      case "-":
        subtracao();
        break;

      case "*":
        multiplicacao();
        break;

      case "/":
        divisao();
        break;

      default:
        print("Operação inválida");
    }
  }

  print('Vamos fazer um cáuculo matemático. Digite um número');

  String? entrada = stdin.readLineSync();
  
  if (entrada != null) {
    if (entrada != "") {
      numeroUm = double.parse(entrada);
    }
  }

  // Este bloco verifica se a operação digitada está na lista de operações válidas
  // Se a entrada digitada pelo usuário for diferente de nula, o programa irá perguntar se ela está na lista operacoes, declarada no início do código. Se estiver a operação torna-se igual a entrada digitada
  void getOperacao() {
    print(
      'Qual operação você quer executar? (+ para soma, - para subtração, * para multiplicação e / para divisão)',
    );
    entrada = stdin.readLineSync();

    if (entrada != null) {
      if (operacoes.contains(entrada)) {
        operacao = entrada!;
      } else {
        print('Operação inválida. Por favor, digite uma operação válida.');
        getOperacao(); // Chama a função novamente para solicitar uma operação válida
      }
    }
  }

  getOperacao();

  print('Agora digite outro número');
  entrada = stdin.readLineSync();
  if (entrada != null) {
    if (entrada != "") {
      numeroDois = double.parse(entrada!);
    }
  }

  calculadora();
  print('O resultado da operação $numeroUm $operacao $numeroDois é: ');
}
