import 'dart:io';

class Question {
  final String question;
  final List<String> options;
  final int correctAnswer;
  Question(this.question, this.options, this.correctAnswer);
}

class QuizApp {
  List<Question> questions;
  int score = 0;
  QuizApp(this.questions);
  void startQuiz() {
    print("Welcom to Quiz App");
    for (var i = 0; i < questions.length; i++) {
      print('Question ${i + 1}: ${questions[i].question}');
      for (var j = 0; j < questions[i].options.length; j++) {
        print('${j + 1}. ${questions[i].options[j]}');
      }
      stdout.write('Your answer: ');
      final userAnswer = int.tryParse(stdin.readLineSync()!);
      if (userAnswer != null &&
          userAnswer >= 1 &&
          userAnswer <= questions[i].options.length) {
        if (userAnswer == questions[i].correctAnswer) {
          print('Correct!\n');
          score++;
        } else {
          print(
              'Incorrect. The correct answer is: ${questions[i].options[questions[i].correctAnswer - 1]}\n');
        }
      } else {
        print('Invalid input. Skipping this question.\n');
      }
    }
    print('Quiz completed!');
    print('Your score: $score out of ${questions.length}');
    double percentage = (score / questions.length) * 100;
    print('Your percentage is $percentage');
    if (percentage > 50) {
      print("congragulations!......");
    }
  }
}

void main() {
  //classQuizApp
  final question = [
    Question(
        "what is the capital city of pakistan?", ['karachi', 'islamabad'], 2),
    Question("what is the office languge of pakistan?", ['urdu', 'english'], 1),
    Question("name pakistan highest mountain?", ['k2', 'mountavrest'], 2),
    Question(
        "what is the colour of pakistan  flag?", ['green n white', 'blue'], 1),
    Question("who is the founder of pakistan?", ['qaide azam', 'edhi'], 1),
    Question(
        "which is the capital city of pakistan?", ['lahore', 'islamabad'], 2),
    Question("which bird is the national bird of pakistan",
        ['chakor', 'pickock'], 1),
    Question("which is the longest river of pakistan", ['indes', 'ravi'], 1),
    Question("who is the prime minster of pakistan",
        ['imranKhan', 'shabazSharif'], 2),
    Question("how many rever in panjab", ['5', '7'], 1),
    Question("which is the largest city of pakistan by population",
        ['karacch,lahore'], 1),
    Question("what is the national flower of pakistan", ['jasmee,rose'], 1),
    Question("Name pakistan largest provence area", ['panjab,sindh'], 1),
    Question("what is the pakistan indipendence day", ['14August,13Sep'], 1),
    Question("who pakistan national poet", ['ilama iqbal', 'hafiz'], 1),
    Question(
        "what is the most popular dish of pakistan", ['biryani', 'haleem'], 1),
    Question("which sea borderd pakistan  to the south", ['1', '2'], 1),
    Question("what is the name of pakistan national anthem",
        ['tarana', 'naghma'], 1),
    Question(
        "what is the national currency of pakistan", ['Rupees', 'dollar'], 1),
    Question("what is the name of paistan national air line?",
        ["pia", 'empirate'], 1),
  ];
  final quiz = QuizApp(question);
  quiz.startQuiz();
}
