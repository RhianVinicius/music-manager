import 'dart:io';

void printMenu(String title, String line, List<String> options) {
  printHeader(title, line);
  printOptions(options);
  print(line);
}


void printHeader(String title, String line) {
  int tabLength = (((line.length - 8) - title.length) ~/ 2) + (((line.length - 8) - title.length) % 2);

  print(line);
  print('${' '*tabLength}${title}');
  print(line);
}


void printOptions(List<String> options) {
  int counter = 1;

  for (String option in options) {
    print('${counter} > ${option}');
    counter++;
  }
}


int validateOptions(int startNumber, int endNumber) {
  while (true) {
    stdout.write('> ');
    String? answer = stdin.readLineSync();
    print('');

    try {
      int answerAsInt = int.parse(answer!);
      if (answerAsInt >= startNumber && answerAsInt <= endNumber) return answerAsInt;
      print('Opção indisponível! Digite uma das opções acima.');
    } catch (e) {
      print('Valor inválido! Digite um número');
    }
  }
}
