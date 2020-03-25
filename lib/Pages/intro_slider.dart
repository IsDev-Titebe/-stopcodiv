import 'package:flutter/material.dart';
import 'package:flutter_page_transition/flutter_page_transition.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:stopcovidapp/Pages/home.dart';

class IntroSlider extends StatelessWidget {

final pages = [
  PageViewModel(
   pageColor: Colors.white,
//      iconImageAssetPath: 'assets/images/slide1.png',
      iconColor: Colors.blue,
      bubbleBackgroundColor: Colors.grey,
      body: Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
      ),
      title: Text('Consultaion'),
      mainImage: Image.asset(
        'assets/images/slide1.png',
        height: 385.0,
        width: 335.0,
        alignment: Alignment.center,
      ),
      titleTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.blueGrey),
      bodyTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.black38),
  ),
  PageViewModel(
   pageColor: Colors.white,
      iconImageAssetPath: 'assets/images/flutterlogo.png',
      iconColor: Colors.blue,
      bubbleBackgroundColor: Colors.white,
      body: Text(
        'Easy  cab  booking  at  your  doorstep  with  cashless  payment  system',
      ),
      title: Text('Cabs'),
      mainImage: Image.asset(
        'assets/images/flutterlogo.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      ),
      titleTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
      bodyTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
  ),
  PageViewModel(
   pageColor: Colors.white,
      iconImageAssetPath: 'assets/images/flutterlogo.png',
      iconColor: Colors.deepPurple,
      bubbleBackgroundColor: Colors.white,
      body: Text(
        'Easy  cab  booking  at  your  doorstep  with  cashless  payment  system',
      ),
      title: Text('Cabs'),
      mainImage: Image.asset(
        'assets/images/flutterlogo.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      ),
      titleTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
      bodyTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
  ),
];


  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context){
        return IntroViewsFlutter(
          pages,
          onTapDoneButton: (){
            Navigator.pushReplacement(
              context, PageTransition(child: Home(),type: PageTransitionType.rippleLeftDown,duration: Duration(
              seconds: 2
            )));
          },
          skipText: Text('SKIP',style: TextStyle(
            color: Colors.blue
          ),),
          doneText: Text('DONE',style: TextStyle(
              color: Colors.blue
          ),),
        );
      }
      );
  }
}