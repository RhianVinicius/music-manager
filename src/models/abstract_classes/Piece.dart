abstract class Piece {
  int id;
  String name;
  String instrument;
  bool isLearned;
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
}