import '../abstract_classes/Piece.dart';

class PianoPiece extends Piece {
  String musicSheetPath;

  PianoPiece(
    int id,
    String name,
    bool isLearned,
    String dificult,
    String maestry,
    this.musicSheetPath
  ) : super (
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