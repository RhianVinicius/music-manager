import '../globals.dart';
import '../menuBuilder.dart';
import 'dart:io';

Map<String, dynamic> addValidator() {
  String? name;
  int instrumentIndex;
  int dificultIndex;
  int isLearnedIndex;
  int maestryIndex;
  Map<String, dynamic> objectData = {
    'isValid':false,
    'name':'none',
    'instrument':'none',
    'dificult':'none',
    'isLearned':'none',
    'maestry':'none'
  };

  printHeader(
    'Adicionar Música',
    addMenuLine
  );
  print('> Para abortar, digitar 0\n');

  while (true) {
    stdout.write('Qual o nome da música?\n> ');
    name = stdin.readLineSync();

    if (name == '0') return objectData;

    if (name != null && name.replaceAll(' ', '') != '') {
      objectData["name"] = name;
      break;
    };
  }

  print(addMenuLine);
  printOptions(instrumentOptions);
  print('\nQual o instrumento?');
  instrumentIndex = validateOptions(0, instrumentOptions.length);

  if (instrumentIndex == 0) return objectData;

  objectData["instrument"] = instrumentOptions[instrumentIndex-1];


  print(addMenuLine);
  printOptions(dificultOptions);
  print('\nQual o nível de dificuldade?');
  dificultIndex = validateOptions(0, dificultOptions.length);

  if (dificultIndex == 0) return objectData;

  objectData["dificult"] = dificultOptions[dificultIndex-1];


  print(addMenuLine);
  printOptions(isLearnedOptions);
  print('\nA Música já está aprendida?');
  isLearnedIndex = validateOptions(0, isLearnedOptions.length);

  if (isLearnedIndex == 0) return objectData;

  objectData["isLearned"] = isLearnedOptions[isLearnedIndex-1];


  if (objectData["isLearned"] == 'Não Aprendido') {
    objectData["maestry"] = 'Indefinido';
  } else {
    print(addMenuLine);
    printOptions(maestryOptions);
    print('\nQual o nível atual de maestria?');
    maestryIndex = validateOptions(0, maestryOptions.length);

    if (maestryIndex == 0) return objectData;

    objectData["maestry"] = maestryOptions[maestryIndex-1];
  }

  objectData["isValid"] = true;
  return objectData;
}