import '../abstract_classes/Piece.dart';

class GuitarPiece extends Piece {
  String? tabPath;

  GuitarPiece({
    required int id,
    required String name,
    required String isLearned,
    required String dificult,
    required String maestry,
    this.tabPath
  }) : super (
    id,
    name,
    'Violão',
    isLearned,
    dificult,
    maestry
  );

  @override
  void showDetails() {
    // TODO: implement showDetails
  }

  static GuitarPiece instanciateFromMap(Map<String, dynamic> data, int id) {
    return GuitarPiece(
      id: id,
      name: data["name"],
      isLearned: data["isLearned"],
      dificult: data["dificult"],
      maestry: data["maestry"],
      tabPath: data["tabPath"]
    );
  }
}
