import 'package:agro_pro/Screens/HomePage.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: AnimatedSplashScreen(
        splash: Container(
          child:
          Center(child: Image.network('https://i.ibb.co/SVmqq8d/Logo.jpg',height: 150,),),
        ), nextScreen: HomePage(),
        splashTransition: SplashTransition.slideTransition,
        // pageTransitionType: PageTransitionType.scale,
        backgroundColor: Color(0xFF1565C0),
        duration: 3000,
        splashIconSize: 150,
      ),
    );
  }
}
