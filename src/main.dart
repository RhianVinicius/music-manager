import 'models/ReportParameters.dart';
import 'services/PieceLibrary.dart';
import 'utils/globals.dart';
import 'utils/menuBuilder.dart';
import 'dart:io';

void main() {
  ReportParameters parameters = new ReportParameters();
  PieceLibrary library = new PieceLibrary(parameters: parameters);

  while (true) {
    printMenu(
      'Menu Principal',
      ['Adicionar Música','Editar Música','Deletar Música','Relatório de Músicas','Parâmetros de Relatório','Sair'],
      mainMenuLine
    );
    print('Qual ação deseja realizar?');
    int userAcntion = validateMenu(6);

    switch (userAcntion) {
      case 1:
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