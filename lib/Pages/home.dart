import 'dart:ui';
import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';
import 'package:flutter_page_transition/flutter_page_transition.dart';
import 'package:stopcovidapp/Pages/consultation_Home.dart';
import 'package:stopcovidapp/Pages/prevention_Home.dart';
import 'package:stopcovidapp/animations/BouceAnimation.dart';
import 'package:stopcovidapp/animations/firstAnimation.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/imghome3.jpg'),
              fit: BoxFit.cover
            )
          ),
        ),
        Container(
          child: BackdropFilter(
            filter: ImageFilter.blur(
                sigmaY: 10,
                sigmaX: 10
            ),
            child: Container(
              color: Colors.black38,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            top: 100,
            left: 20,
            right: 20,
          ),
          child: Center(
            child: Column(
              children: <Widget>[
                BouncewidgetAnimator(
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
//                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.35),
                            blurRadius: 10,
                            offset: Offset(5, 10)
                        )
                      ],
                    ),
                    child: Icon(Icons.local_hospital,color: Colors.white,size: 50),
                  )
                ),
                SizedBox(height: 30),
                firstwidgetAnimator(
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 20
                    ),
                    child: Text(
                      "Temporibus autem aut officiis debitis aut rerum necessitatibus,autem ",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          decoration: TextDecoration.none
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(height: 90),
                firstwidgetAnimator(
                 GestureDetector(
                   onTap: (){
                     Navigator.push(
                         context, PageTransition(child: ConsultingHome(),type: PageTransitionType.rippleLeftDown,duration: Duration(
                         seconds: 1
                     )));
                   },
                   child: Container(
                   height: 40,
                   width: 300,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(30),
                       border: Border.all(
                           width: 1,
                           color: Colors.white
                       )
                   ),
                   child: Center(
                     child: Text('Consultation',
                       style: TextStyle(
                           decoration: TextDecoration.none,
                           fontSize: 15,
                           letterSpacing: 0.8,
                           color: Colors.white
                       ),),
                   ),
                 ),
                 )
                ),
                SizedBox(height: 30),
                firstwidgetAnimator(
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context, PageTransition(child: PreventionHome(),type: PageTransitionType.rippleLeftDown,duration: Duration(
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
                          child: Text('Préventions',
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 15,
                                letterSpacing: 0.8,
                                color: Colors.black54
                            ),),
                        ),
                      ),
                    )
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        )
      ],
    );
  }
}
