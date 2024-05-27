
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:urdu_bible/screen/wellcom_screen.dart';

class SplashServices{
  void isLogin(BuildContext context){
    Timer(Duration(seconds: 3),
        ()=> Navigator.push(context , MaterialPageRoute(builder: (context) => wellcom_screen()))
    );
  }
}