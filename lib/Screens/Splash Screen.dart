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
          Center(child: Image.network('https://images.g2crowd.com/uploads/product/image/large_detail/large_detail_e2400d766f2c932321a026d6355d0874/agropro.png',height: 150,),),
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
