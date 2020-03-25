import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:stopcovidapp/animations/BouceAnimation.dart';
import 'package:stopcovidapp/models/question_logic.dart';
import 'package:stopcovidapp/styles/colorStyle.dart';


class QuestionConsulting extends StatefulWidget {
  @override
  _QuestionConsultingState createState() => _QuestionConsultingState();
}

class _QuestionConsultingState extends State<QuestionConsulting> {

 int score = 0;

  final TextStyle _questionStyle = TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
      color: Colors.white
  );

  QuizLogic quizLogic = QuizLogic();

  updateScore(){

  }

  handleAnswer(String answerByUser){
    updateScore();
    if(quizLogic.getCorrectAnswers() == answerByUser){
         setState(() {
           score++;
           print(score);
         });
    } else{

    }

    if(quizLogic.isFinished()){
      print('super la partie et terminée');
       if (score >= 7.5) {
         print('tu es malade');
       }else{ print('tu es malade'); }
    } else{
      setState(() {
        quizLogic.nextQuestion();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return WillPopScope(
        onWillPop: _onWillPop,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            title: Text('Questionnaire',style: TextStyle(
              color: Colors.black
            ),),
            elevation: 0,
          ),
          body: Stack(
            children: <Widget>[
              Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors:[
                          color5,
                          color6
                        ]
                    )
                ),
              ),
              ClipPath(
                clipper: WaveClipperTwo(),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey
                  ),
                  height: 200,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white70,
                      child: Text(quizLogic.getQuestionIndex().toString()),
                    ),
                    SizedBox(height: 30),
                    Container(
                      child: Text(quizLogic.getQuiz(),
                        softWrap: true,
                        style: _questionStyle)),
                    SizedBox(height: 20.0),
                    Container(
                      width: 300,
                      height: 100,
                      color: Colors.red,
                      child: Container(
                        child: Column(
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.only(top: 10,bottom: 10),
                                 child: Center(
                                   child: Text('SI oui, Pendant combient des temps'),
                                 ),
                              ),
                              Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                      flex: 2,
                                      child: RaisedButton(
                                          onPressed: (){
                                            handleAnswer(quizLogic.getIncorrectAnswers());
                                          },
                                          child: Text(quizLogic.getIncorrectAnswers()),
                                      )
                                  ),
                                  SizedBox(width: 5),
                                  Expanded(
                                      flex: 2,
                                      child: RaisedButton(
                                        onPressed: (){
                                          handleAnswer(quizLogic.getCorrectAnswers());
                                        },
                                        child: Text(quizLogic.getCorrectAnswers()),
                                      )
                                  ),
                                ],
                              ),)
                            ],
                          ),

                      )
                    ),
                    SizedBox(height: 200.0),
                    GestureDetector(
                      onTap: (){
                        handleAnswer(quizLogic.getAnswerNo());
                        },
                      child: Container(
                        height: 40,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                                width: 1,
                                color: Colors.white
                            )
                        ),
                        child: Center(
                          child: Text('Non',
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 15,
                                letterSpacing: 0.8,
                                color: Colors.black54
                            ),),
                        ),
                      ),
                    )
                  ],
                ),
              )

            ],
          ),
        ),
        );
  }

  Future<bool> _onWillPop() async{
    return showDialog<bool>(
      context: context,
      builder: (_){
        return AlertDown();
      }
    );
  }
  Widget AlertDown(){
    return Material(
      color: Colors.transparent,
        child: Center(
          child: Container(
            height: 300,
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 60,
                  right: 0,
                  left: 0,
                  child: Container(
                    height: 150,
                    child: BouncewidgetAnimator(
                        Center(
                            child: Container(
                              width: 250,
                              decoration: BoxDecoration(
                                  color: Colors.white70,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: 40,
                                    right: 10,
                                    left: 10,
                                    bottom: 10
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text('Etes vous sur de quitter ? '
                                        ,textAlign: TextAlign.center
                                        ,style:TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Releway'
                                        )),
                                    SizedBox(height: 30),
                                    Row(
                                      children: <Widget>[
                                        FlatButton(
                                          child: Text("Oui"),
                                          onPressed: (){
                                            Navigator.pop(context,true);
                                          },
                                        ),
                                        FlatButton(
                                          child: Text("Non"),
                                          onPressed: (){
                                            Navigator.pop(context,false);
                                          },
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                        )),
                  ),
                ),
                Positioned(
                    top: 5,
                    right: 0,
                    left: 0,
                    child: BouncewidgetAnimator(Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: Colors.white,
                              width: 10
                          ),
                          color: Colors.yellow
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.mood,
                                size:60),
                          ],
                        ),
                      ),
                    ))
                )
              ],
            ),
          ),
        ),
    );
  }
 List <Widget> go =[];

}
