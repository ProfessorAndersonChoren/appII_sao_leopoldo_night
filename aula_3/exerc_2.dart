import 'dart:io';

void main() {
  // Entrada
  print('Digite uma frase');
  final phrase = stdin.readLineSync()!;
  print('Digite o que procuras');
  final search = stdin.readLineSync()!;
  print('Pelo que devo trocar');
  final replace = stdin.readLineSync()!;
  // Processamento
  final result = phrase.replaceAll(search, replace);

  // Saída
  print(result);
}
