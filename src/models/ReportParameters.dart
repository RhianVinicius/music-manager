class ReportParameters {
  String _instrument = 'sem filtro';
  String _dificult = 'sem filtro';
  String _isLearned = 'sem filtro';
  String _maestry = 'sem filtro';
  final String _exceptionMessage = 'Invalid parameter submitted on ReportParameters model class';


  String get instrument => _instrument;

  String get dificult => _dificult;

  String get isLearned => _isLearned;

  String get maestry => _maestry;


  set instrument(String newParameter) {
    List<String> availibleParameters = ['Violão', 'Piano', 'sem filtro'];
    if (availibleParameters.contains(newParameter)) {
      _instrument = newParameter;
    } else {
      throw Exception(_exceptionMessage);
    }
  }

  set dificult(String newParameter) {
    List<String> availibleParameters = ['Fácil', 'Intermediário', 'Difícil', 'sem filtro'];
    if (availibleParameters.contains(newParameter)) {
      _dificult = newParameter;
    } else {
      throw Exception(_exceptionMessage);
    }
  }

  set isLearned(String newParameter) {
    List<String> availibleParameters = ['Aprendido', 'Não Aprendido', 'sem filtro'];
    if (availibleParameters.contains(newParameter)) {
      _isLearned = newParameter;
    } else {
      throw Exception(_exceptionMessage);
    }
  }

  set maestry(String newParameter) {
    List<String> availibleParameters = ['Ruim', 'Mediano', 'Bom', 'sem filtro'];
    if (availibleParameters.contains(newParameter)) {
      _maestry = newParameter;
    } else {
      throw Exception(_exceptionMessage);
    }
  }


  ReportParameters();
}