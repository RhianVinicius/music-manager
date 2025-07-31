import '../abstract_classes/Piece.dart';

class PianoPiece extends Piece {
  String? musicSheetPath;

  PianoPiece({
    required int id,
    required String name,
    required String isLearned,
    required String dificult,
    required String maestry,
    this.musicSheetPath
  }) : super (
    id,
    name,
    'Piano',
    isLearned,
    dificult,
    maestry
  );

  @override
  void showDetails() {
    // TODO: implement showDetails
  }

  static PianoPiece instanciateFromMap(Map<String, dynamic> data, int id) {
    return PianoPiece(
      id: id,
      name: data["name"],
      isLearned: data["isLearned"],
      dificult: data["dificult"],
      maestry: data["maestry"],
      musicSheetPath: data["musicSheetPath"]
    );
  }
}
