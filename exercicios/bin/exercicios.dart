// 1)
// import 'dart:io';
// void main () {
//   print('Digite um número');
//   double numeroDigitado = double.parse(stdin.readLineSync()!);

//   print('O dobro de $numeroDigitado é ${numeroDigitado * 2}');
// }

// ---------------------------
// 2)
// import 'dart:io';
// void main () {
//   print('Digite a idade da primeira pessoa');
//   double idadeUm = double.parse(stdin.readLineSync()!);

//   print('Digite a idade da segunda pessoa');
//   double idadeDois = double.parse(stdin.readLineSync()!);

//   print('Digite a idade da terceira pessoa');
//   double idadeTres = double.parse(stdin.readLineSync()!);

//   print('A média das idades é ${(idadeUm + idadeDois + idadeTres) / 3}');
// }

// -------------------------------
// 3)
// import 'dart:io';
// void main() {
//   print('Qual é o seu nome?');
//   String? nome = stdin.readLineSync();

//   print('Qual é a sua idade?');
//   int idade = int.parse(stdin.readLineSync()!);

//   print('Qual é o seu CPF?');
//   int cpf = int.parse(stdin.readLineSync()!);

//   print('Qual é a sua altura?');
//   double altura = double.parse(stdin.readLineSync()!);

//   print('Você participa de alguma pastoral? Se sim, qual?');
//   String? pastoral = stdin.readLineSync();

//   print('Eu sou $nome, tenho $idade anos.');
//   print('Meu CPF é $cpf');
//   print('Minha altura é $altura');
//   print('Pastoral: $pastoral');

// }
// --------------------------------------
// RECURSÃO
// 1)

// import 'dart:io';

// void main() {
//   List<String> listaCategorias = [
//     "eletronicos",
//     "alimentos",
//     "vestuario",
//     "livros",
//   ];

//   print('Digite o nome do produto');
//   String? nomeProduto = stdin.readLineSync();
//   void adicionarProduto() {
//     print('A qual categoria este produto pertence? ${listaCategorias.toString()}');
//     String? categoria = stdin.readLineSync();

//     if (categoria != null) {
//       if (listaCategorias.contains(categoria)) {
//         print(
//           'Produto $nomeProduto adicionado com sucesso na categoria $categoria',
//         );
//       } else {
//         print(
//           'Categoria inválida. Por favor, escolha uma das seguintes categorias: ${listaCategorias.toString()}',
//         );
//         adicionarProduto();
//       }
//     }
//   }

//   adicionarProduto();
// }

// --------------------------------
// Loopins de repetição

//1)

// void main () {
//   for (var i = 1 ; i <= 5 ; i++) {
//     print(i);
//   }
// }

//2)

// void main () {
//   List<String> nomes = ["Isabella", "Lara", "Vanessa", "Roberto"];

//   for (var i = 0 ; i < nomes.length ; i++) {
//     print(nomes[i]);
//   }

// }

  