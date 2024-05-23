import 'package:flutter/material.dart';
import 'package:urdu_bible/screen/home.dart';
class login_screen extends StatelessWidget {
   login_screen({super.key});

  final emailController  = TextEditingController();
  final passwordController  = TextEditingController();
   @override
  void   dispsoe(){

   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Log in',style: TextStyle(fontSize: 25),)),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('Welcome Back!',style: TextStyle(fontSize: 30,),),
            ),
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
                  child: Center(child: Text('sign up',style: TextStyle(color: Colors.white),)),
                ),
              ),
            ),







            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Row(
                children: [
                  Text("Don't have an acount? ",style: TextStyle(color: Colors.grey),),
                  Text("Register ",style: TextStyle(color: Colors.brown),)


                ],
              ),
            )




          ],
        ),
      ),
    );
  }
}

