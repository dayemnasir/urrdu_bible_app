

import 'package:flutter/material.dart';
import 'package:urdu_bible/screen/wellcom_screen.dart';
 class SplashScreen extends StatefulWidget {
   const SplashScreen({super.key});

   @override
   State<SplashScreen> createState() => _SplashScreenState();
 }

 class _SplashScreenState extends State<SplashScreen> {

   @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4),(){
      Navigator.pushReplacement(
          context, MaterialPageRoute(
          builder: (context) => const wellcom_screen())
      );
    });
  }

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Color(0xFFDAC09B),
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             Image.asset('assets/images/app_logo.png',width: 300.0,),
             SizedBox(height: 5,),

           ],
         ),
       ),
     );
   }
 }