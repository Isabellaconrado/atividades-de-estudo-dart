import 'dart:io';

void main () {
  print('Olá, este é o meu primeiro app em Dart! Qual é seu nome?');
  var nome = stdin.readLineSync();
  print('Olá, $nome! É um prazer te conhecer.');
}
    
