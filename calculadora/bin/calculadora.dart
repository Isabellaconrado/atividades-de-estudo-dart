import 'dart:io';

void main() {
  print('Vamos fazer um cáuculo matemático. Digite um número');
  double numeroUm = double.parse(stdin.readLineSync()!);

  print(
    'Qual operação você quer executar? (+ para soma, - para subtração, * para multiplicação e / para divisão)',
  );
  String? operacao = stdin.readLineSync()!;

  print('Agora digite outro número');
  double numeroDois = double.parse(stdin.readLineSync()!);

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

  calculadora();
}