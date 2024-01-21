class QuizQuestion {
  const QuizQuestion(this.text, this.answers);
  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    // copialo la lista originale
    final shuffledList = List.of(answers);
    // mescoliamo, usando il metodo shuffle() di List. (in caso lo fai direttamente sulla lista originale, la mescoleresti per sempre)
    shuffledList.shuffle();
    // ritorniamo la lista mescolata
    return shuffledList;
  }
}
