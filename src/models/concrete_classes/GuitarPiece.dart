import '../abstract_classes/Piece.dart';

class GuitarPiece extends Piece {
  String tabPath;

  GuitarPiece(
    int id,
    String name,
    bool isLearned,
    String dificult,
    String maestry,
    this.tabPath
  ) : super (
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
}