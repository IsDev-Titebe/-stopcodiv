

import 'package:stopcovidapp/models/questions.dart';

class QuizLogic {
  int _questionIndex =0;
  List<Question> questions=[
     Question(
         2,
         'Avez-vous mal à la gorge ?',
         '1 à 3 jours',
         'Non',
         '4 jours ou plus'),
    Question(
        3,
        'Votre voix est-elle devenue rock ?',
        '1 à 4 jours',
        'Non',
        '5 jours ou plus'),
    Question(
        4,
        'Avez-vous la fièvre ?',
        '1 à 5 jours',
        'Non',
        '6 jours ou plus'),
    Question(
        5,
        'Manquez-vous d’appétit ?',
        '1 à 3 jours',
        'Non',
        '4 jours ou plus'),
    Question(
        6,
        'Avez-vous mal à la tête ?',
        '1 à 7 jours',
        'Non',
        '8 jours ou plus'),
    Question(
        7,
        'Faite vous la diarrhée ?',
        '1 à 3 jours',
        'Non',
        '4 jours ou plus'),
    Question(
        8,
        'Présentez-vous des fatigues ?',
        '1 à 5 jours',
        'Non',
        '6 jours ou plus'),
    Question(
        9,
        'Avez-vous des douleurs articulaires ?',
        '1 à 4 jours',
        'Non',
        '5 jours ou plus'),
    Question(
        10,
        'Toussez-vous  ?',
        '1 à 5 jours',
        'Non',
        '6 jours ou plus'),
    Question(
        11,
        'Avez-vous des nausées  ?',
        '1 à 5 jours',
        'Non',
        '6 jours ou plus'),
    Question(
        12,
        'Vomissez-vous ?',
        '1 à 5 jours',
        'Non',
        '6 jours ou plus'),
    Question(
        13,
        'Avez-vous des douleurs thoraciques ?',
        '1 à 7 jours',
        'Non',
        '8 jours ou plus'),
    Question(
        14,
        'Etes-vous de quelle tranche d’âge ?',
        'Moins de 60 ans',
        'Non',
        'Plus de 60 ans'),
    Question(
        14,
        'Etiez-vous en contact ces derniers temps avec quelqu’un venant de l’extérieur ?',
        'Oui',
        'Non',
        'non'),

    ];

  int getQuizId(){
    return questions[_questionIndex].quizId;
  }

  String getQuiz(){
    return questions[_questionIndex].quiz;
  }

  String getIncorrectAnswers(){
    return questions[_questionIndex].incorrectAnswers;
  }
  String getCorrectAnswers(){
    return questions[_questionIndex].correctAnswer;
  }

  String getAnswerNo(){
    return questions[_questionIndex].AnswerNo;
  }

  bool isFinished(){
    if (_questionIndex >= questions.length -1)return true;
    return false;
  }

   getQuestionIndex(){
   return _questionIndex + 1;
  }

  nextQuestion(){
    _questionIndex++;
  }

  }




