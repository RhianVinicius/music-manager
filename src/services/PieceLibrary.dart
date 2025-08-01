import '../models/abstract_classes/Piece.dart';
import '../models/ReportParameters.dart';

class PieceLibrary {
  ReportParameters parameters;
  List<Piece> library = [];
  int _nextId = 1;
  static String _abortMessage = '\nProcedimento Abortado!\n';
  static String _successMessage = '\nProcedimento bem Sucedido!\n';

  PieceLibrary({required this.parameters, });


  void addPiece(Map<String,dynamic> pieceData) {
    if (pieceData["isValid"] == false) {
      print(_abortMessage);
      return;
    }

    library.add(Piece.instanciateFromMap(pieceData, _nextId));
    
    print(_successMessage);
  }
}
