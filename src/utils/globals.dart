import 'generalUtils.dart';

int lineLength = 46;

final String mainMenuLine = line(lineLength, '36');
final String addMenuLine = line(lineLength, '32');
final String editMenuLine = line(lineLength, '33');
final String deleteMenuLine = line(lineLength, '31');
final String reportMenuLine = line(lineLength, '34');


const List<String> instrumentOptions = ['Violão', 'Piano'];
const List<String> dificultOptions = ['Fácil', 'Intermediário', 'Difícil'];
const List<String> isLearnedOptions = ['Aprendido', 'Não Aprendido'];
const List<String> maestryOptions = ['Indefinido', 'Ruim', 'Mediano', 'Bom'];