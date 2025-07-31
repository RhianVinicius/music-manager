import '../concrete_classes/GuitarPiece.dart';

abstract class Piece {
  int id;
  String name;
  String instrument;
  String isLearned;
  String dificult;
  String maestry;

  Piece(
    this.id,
    this.name,
    this.instrument,
    this.isLearned,
    this.dificult,
    this.maestry
  );

  void showDetails();

  static Piece instanciateFromMap(Map<String, dynamic> data, int id) {
    switch (data["instrument"]) {
      case 'Violão':
        return GuitarPiece.instanciateFromMap(data, id);
      case 'Piano':
        return GuitarPiece.instanciateFromMap(data, id);
      default:
        throw Exception('Instrument not found: ${data["instrument"]}');
    }
  }
}