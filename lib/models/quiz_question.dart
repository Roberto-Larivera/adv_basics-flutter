class QuizQuestion {
  const QuizQuestion(this.text, this.answers);
  final String text;
  final List<String> answers;


// anche qui invece di funzione si può utilizzare il getter (get)
// getter
  List<String> get shuffledAnswers {
    // copialo la lista originale
    final shuffledList = List.of(answers);
    // mescoliamo, usando il metodo shuffle() di List. (in caso lo fai direttamente sulla lista originale, la mescoleresti per sempre)
    shuffledList.shuffle();
    // ritorniamo la lista mescolata
    return shuffledList;
  }

  // ---- funzione
  // List<String> getShuffledAnswers() {
  //   // copialo la lista originale
  //   final shuffledList = List.of(answers);
  //   // mescoliamo, usando il metodo shuffle() di List. (in caso lo fai direttamente sulla lista originale, la mescoleresti per sempre)
  //   shuffledList.shuffle();
  //   // ritorniamo la lista mescolata
  //   return shuffledList;
  // }
}
