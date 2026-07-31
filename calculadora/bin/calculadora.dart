import 'dart:io';

void main() {
  print('Vamos fazer um cáuculo matemático. Digite um número');
  double numeroUm = double.parse(stdin.readLineSync()!);
  print('Agora digite outro número');
  double numeroDois = double.parse(stdin.readLineSync()!);
  print('Qual operação você quer executar?');
  String? operacao = stdin.readLineSync()!;

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

  if (operacao == "+") {
    soma();
  } else {
    if (operacao == "-") {
      subtracao();
    } else {
      if (operacao == "/") {
        divisao();
      } else {
        if (operacao == "*") {
          multiplicacao();
        }
      }
    }
  }

  switch (operacao) {
    case "+":
    soma();

    case "-":
    subtracao();

    case "*":
    multiplicacao();

    case "/" :
    divisao();
    break; 
  }
}
