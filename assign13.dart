import 'dart:io';

class Question {
  String questionText;
  List<String> options;
  int correctAnswerIndex;

  Question(this.questionText, this.options, this.correctAnswerIndex);

  bool checkAnswer(int userAnswer) {
    return userAnswer == correctAnswerIndex;
  }
}

class Quiz {
  List<Question> questions;
  int score = 0;

  Quiz(this.questions);

  void start() {
    print('Welcome to the Quiz!');
    print('---------------------');

    for (var i = 0; i < questions.length; i++) {
      print('Question ${i + 1}: ${questions[i].questionText}');
      for (var j = 0; j < questions[i].options.length; j++) {
        print('${j + 1}. ${questions[i].options[j]}');
      }

      stdout.write('Enter your answer (1-${questions[i].options.length}): ');
      int? userAnswer = int.tryParse(stdin.readLineSync()!);

      if (userAnswer != null &&
          userAnswer > 0 &&
          userAnswer <= questions[i].options.length) {
        if (questions[i].checkAnswer(userAnswer - 1)) {
          print('Correct!\n');
          score++;
        } else {
          print('Wrong! The correct answer is: ${questions[i].options[questions[i].correctAnswerIndex]}\n');
        }
      } else {
        print('Invalid answer. Skipping question...\n');
      }
    }

    print('Quiz finished!');
    print('Your final score is: $score/${questions.length}');
  }
}

void main() {
  
  List<Question> questions = [
    Question('What is the capital of France?', ['Berlin', 'Madrid', 'Paris', 'Rome'], 2),
    Question('Who wrote "Hamlet"?', ['Charles Dickens', 'William Shakespeare', 'Mark Twain', 'Jane Austen'], 1),
    Question('What is the largest planet in our solar system?', ['Earth', 'Mars', 'Jupiter', 'Saturn'], 2),
  ];

  Quiz quiz = Quiz(questions);

 quiz.start();
}