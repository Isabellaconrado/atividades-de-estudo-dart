import 'dart:io';

void main() {
  double numeroUm = 0;
  double numeroDois = 0;  
  String operacao = "";
  
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

  print(
    'Qual operação você quer executar? (+ para soma, - para subtração, * para multiplicação e / para divisão)',
  );

  entrada = stdin.readLineSync();
  if (entrada != null) {
    operacao = entrada;
  }

  print('Agora digite outro número');
  entrada = stdin.readLineSync();
  if (entrada != null) {
    if (entrada != "") {
      numeroDois = double.parse(entrada);
    }
  }

  calculadora();
}