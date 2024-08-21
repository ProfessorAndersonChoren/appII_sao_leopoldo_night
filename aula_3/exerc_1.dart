import 'dart:io';

void main() {
  // Entrada
  print('Digite uma frase, e descobra algumas informações sobre ela');
  final String phrase = stdin.readLineSync()!;

  // Processamento
  final int characters = phrase.length;
  final int words = phrase.split(' ').length;

  // Saída
  print('A frase "$phrase" tem $characters caracteres');
  print('A frase "$phrase" contém $words palavras');
}
