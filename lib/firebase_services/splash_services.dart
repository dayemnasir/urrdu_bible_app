
import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:urdu_bible/screen/auth/login_screen.dart';
import 'package:urdu_bible/screen/home.dart';
import 'package:urdu_bible/screen/wellcom_screen.dart';

class SplashServices{
  void isLogin(BuildContext context){
    final auth = FirebaseAuth.instance;
    final user = auth.currentUser;
    if(user != null){
      Timer(Duration(seconds: 3),
              () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()))
      );
    }else if(user == null){
      Timer(Duration(seconds: 3),
      () => Navigator.push(context, MaterialPageRoute(builder: (context) => wellcom_screen()))
      );
    }else{
      Timer(Duration(seconds: 3),
          () => Navigator.push(context, MaterialPageRoute(builder: (context) => login_screen()))
      );
    }
  }
}