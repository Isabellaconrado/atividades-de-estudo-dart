import 'dart:io';

void main() {
  double numeroUm = 0;
  double numeroDois = 0;
  String operacao = "";
  List<String> operacoes = ["+", "-", "*", "/"];

  double soma() {
    return numeroUm + numeroDois;
  }

  double subtracao() {
    return numeroUm - numeroDois;
  }

  double multiplicacao() {
    return numeroUm * numeroDois;
  }

  double divisao() {
    return numeroUm / numeroDois;
  }

  double calculadora() {
    switch (operacao) {
      case "+":
        return soma();

      case "-":
        return subtracao();

      case "*":
        return multiplicacao();

      case "/":
        return divisao();

      default:
        return 0;
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
      'Qual operação você quer executar? ${operacoes.toString()}',
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
  double resultado = calculadora();

  print('O resultado da operação $numeroUm $operacao $numeroDois é: $resultado');
}
