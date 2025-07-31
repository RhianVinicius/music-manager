import '../abstract_classes/Piece.dart';

class PianoPiece extends Piece {
  String? musicSheetPath;

  PianoPiece({
    required int id,
    required String name,
    required bool isLearned,
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
}