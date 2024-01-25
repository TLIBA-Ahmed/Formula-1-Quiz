// ignore_for_file: file_names

class QuizQuestion {
  const QuizQuestion(this.text, this.ansewrs);
  final String text;
  final List<String> ansewrs;

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(ansewrs);
    shuffledList.shuffle();
    return shuffledList;
  }
}
