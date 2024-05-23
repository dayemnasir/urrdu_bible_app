import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {

  final String title;
  const RoundButton({Key? key, required this.title}): super(key: key) ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
          height: 50,
          decoration: BoxDecoration(
            color: Colors.brown,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(child: Text(title,style: TextStyle(color: Colors.brown),),),
        )
    );
  }
}

