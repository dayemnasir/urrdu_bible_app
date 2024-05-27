import 'package:flutter/material.dart';
import 'package:urdu_bible/screen/home.dart';

import 'login_screen.dart';
class singup_screen extends StatelessWidget {
  singup_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFDAC09B),
        title: Text('Sign up',style: TextStyle(fontSize: 25),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 70,),
           const Padding(
              padding:  EdgeInsets.all(25),
              child: TextField(
                decoration: InputDecoration(
                  hintText: ' Email',hintStyle: TextStyle(color: Colors.black),

                ),
              ),
            ),
            SizedBox(height: 30,),

           const Padding(
              padding:  EdgeInsets.all(25),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Password',hintStyle: TextStyle(color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 30,),



            Padding(
              padding: const EdgeInsets.all(25),
              child: InkWell(
                onTap: (){
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(
                      builder: (context) => const HomePage())
                  );},
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(child: Text('sign up',style: TextStyle(color: Colors.white),)),
                ),
              ),
            ),
            const   SizedBox(height: 5,),
            Padding(
              padding:  EdgeInsets.only(left: 80),
              child: Row(
                children: [
                  Text("already  have  an account? ",style: TextStyle(color: Colors.grey)),
                  InkWell(
                      onTap: (){
                        Navigator.pushReplacement(
                            context, MaterialPageRoute(
                            builder: (context) => login_screen())
                        );
                      },
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Text('login..',style: TextStyle(color: Colors.brown),),
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
}

