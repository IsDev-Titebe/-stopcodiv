import 'package:flutter/material.dart';
import 'package:flutter_page_transition/flutter_page_transition.dart';

import 'package:stopcovidapp/Pages/questions_consulting.dart';
import 'package:stopcovidapp/styles/colorStyle.dart';

class ConsultingHome extends StatefulWidget {
  @override
  _ConsultingHomeState createState() => _ConsultingHomeState();
}

class _ConsultingHomeState extends State<ConsultingHome> {

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
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
          Container(
            width: width,
            height: height,
            child: Padding(
              padding: EdgeInsets.only(
                top: 50,
                left: 30,
                right: 30,
                bottom: 20
              ),
              child: Column(
                children: <Widget>[
                  Text('Consultation preventif'),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(50)
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n \n Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '),
                  SizedBox(
                    height: 40,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(
                          context, PageTransition(child: QuestionConsulting(),type: PageTransitionType.rippleLeftDown,duration: Duration(
                          seconds: 1
                      )));
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
                        child: Text('C\'est parti',
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
            ),
          )
        ],
      )
    );
  }
}
