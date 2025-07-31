import '../abstract_classes/Piece.dart';

class GuitarPiece extends Piece {
  String? tabPath;

  GuitarPiece({
    required int id,
    required String name,
    required bool isLearned,
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
}