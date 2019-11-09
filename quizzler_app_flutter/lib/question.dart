class Question {
  String questionText;
  bool questionAnswer;

  Question(this.questionText, this.questionAnswer);

  bool isCorrect({bool answer}) {

    if (answer == this.questionAnswer) {
      return true;
    } else {
      return false;
    }

  }

}