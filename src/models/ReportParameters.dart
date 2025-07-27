const List<String> availibleInstrumentParameters = ['Violão', 'Piano', 'sem filtro'];
const List<String> availibleDificultParameters = ['Fácil', 'Intermediário', 'Difícil', 'sem filtro'];
const List<String> availibleisLearnedParameters = ['Aprendido', 'Não Aprendido', 'sem filtro'];
const List<String> availibleMaestryParameters = ['Ruim', 'Mediano', 'Bom', 'sem filtro'];
const String _exceptionMessage = 'Invalid parameter submitted on ReportParameters model class';

class ReportParameters {
  String _instrument = 'sem filtro';
  String _dificult = 'sem filtro';
  String _isLearned = 'sem filtro';
  String _maestry = 'sem filtro';
  
  String get instrument => _instrument;

  String get dificult => _dificult;

  String get isLearned => _isLearned;

  String get maestry => _maestry;

  set instrument(String newParameter) {
    if (availibleInstrumentParameters.contains(newParameter)) {
      _instrument = newParameter;
    } else {
      throw Exception(_exceptionMessage);
    }
  }

  set dificult(String newParameter) {
    if (availibleDificultParameters.contains(newParameter)) {
      _dificult = newParameter;
    } else {
      throw Exception(_exceptionMessage);
    }
  }

  set isLearned(String newParameter) {
    if (availibleisLearnedParameters.contains(newParameter)) {
      _isLearned = newParameter;
    } else {
      throw Exception(_exceptionMessage);
    }
  }

  set maestry(String newParameter) {
    if (availibleMaestryParameters.contains(newParameter)) {
      _maestry = newParameter;
    } else {
      throw Exception(_exceptionMessage);
    }
  }

  ReportParameters();
}