import 'dart:io';

void printMenu(String title, String line, {bool printOptions=true, List<String>? options}) {
  int tabLength = (((line.length - 8) - title.length) ~/ 2) + (((line.length - 8) - title.length) % 2);
  int counter = 1;

  print(line);
  print('${' '*tabLength}${title}');
  print(line);

  if (!printOptions) {
    return;
  }

  for (String option in options!) {
    print('${counter} > ${option}');
    counter++;
  }

  print(line);
}

int validateMenu(int numberOfOption) {
  while (true) {
    stdout.write('> ');
    String? answer = stdin.readLineSync();
    print('');

    try {
      int answerAsInt = int.parse(answer!);
      if (answerAsInt >= 1 && answerAsInt <= numberOfOption) return answerAsInt;
      print('Opção indisponível! Digite uma das opções acima.');
    } catch (e) {
      print('Valor inválido! Digite um número');
    }
  }
}