import 'models/ReportParameters.dart';
import 'services/PieceLibrary.dart';
import 'utils/globals.dart';
import 'utils/input_validators/addValidator.dart';
import 'utils/menuBuilder.dart';
import 'dart:io';

void main() {
  ReportParameters parameters = new ReportParameters();
  PieceLibrary library = new PieceLibrary(parameters: parameters);

  while (true) {
    printMenu(
      'Menu Principal',
      mainMenuLine,
      ['Adicionar Música','Editar Música','Deletar Música','Relatório de Músicas','Parâmetros de Relatório','Sair']
    );
    print('Qual ação deseja realizar?');
    int userAcntion = validateOptions(1, 6);

    switch (userAcntion) {
      case 1:
        dynamic teste = addValidator();
        print(teste);
        break;
      case 2:
        break;
      case 3:
        break;
      case 4:
        break;
      case 5:
        break;
      case 6:
        exit(0);
    }
  }
}