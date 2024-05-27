import 'package:flutter/material.dart';
import 'package:urdu_bible/screen/auth/sigup_screen.dart';
import '';
import '../home.dart';
class login_screen extends StatelessWidget {
  login_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFDAC09B),
        automaticallyImplyLeading: true,
        title: Text('login '),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: 30,),

            Padding(
              padding: const EdgeInsets.all(25),
              child: TextField(
                decoration: InputDecoration(
                  hintText: ' Email',hintStyle: TextStyle(color: Colors.black),



                ),
              ),
            ),
            SizedBox(height: 30,),

            Padding(
              padding: const EdgeInsets.all(25),
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
                  child: Center(child: Text('login',style: TextStyle(color: Colors.white),)),
                ),
              ),
            ),







            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Row(
                children: [
                  Text("Don't have an acount? ",style: TextStyle(color: Colors.grey),),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> singup_screen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Text("Register ",style: TextStyle(color: Colors.brown),),
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

