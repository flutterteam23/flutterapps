class QuizQuestion {
  final String question;
  final List<String> answers;

  const QuizQuestion(this.question, this.answers);

  List<String> getShuffledList() {
    final shuffledList = List.of(answers); // List.of() creates copy of another list
    shuffledList.shuffle();
    return shuffledList;
  }
}
