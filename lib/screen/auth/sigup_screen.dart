import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../widgets/roundbutton.dart';
import 'login_screen.dart';
import 'package:urdu_bible/utils/utilities.dart';
class singup_screen extends StatefulWidget {
  singup_screen({super.key});

  @override
  State<singup_screen> createState() => _singup_screenState();
}

class _singup_screenState extends State<singup_screen> {

  bool loading = false ;
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final  _auth = FirebaseAuth.instance;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();

  }


  void signUp(){
    setState(() {
      loading = true ;
    });



    _auth.sendSignInLinkToEmail(
      email: emailController.text.toString(),
      actionCodeSettings: ActionCodeSettings(
        url: 'https://flutterauth.page.link/',
        handleCodeInApp: true,
        iOSBundleId: 'com.techease.dumy',
        androidPackageName: 'com.techease.dumy',
        androidMinimumVersion: "1",
      ),

    ).then((value){
    }).onError((error, stackTrace){
      print(error.toString());
    });

    _auth.createUserWithEmailAndPassword(
        email: emailController.text.toString(),
        password: passwordController.text.toString()).then((value){
          Navigator.push(context, MaterialPageRoute(builder: (context) => login_screen()));
      setState(() {
        loading = false ;
      });
    }).onError((error, stackTrace){
      Utilities().toastMessage(error.toString());
      setState(() {
        loading = false ;
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFFDAC09B),
        title: Text('Sign up',style: TextStyle(fontSize: 25),),
        centerTitle: true,
      ),
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      autofillHints:[AutofillHints.email],
                      decoration: InputDecoration(
                        // errorText: _emailError,
                        helperText: 'enter your email e.g jhon@gmail.com',
                        hintText: ' Email',hintStyle: TextStyle(color: Colors.black),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25),
                    child: TextFormField(
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      controller: passwordController,
                      decoration: InputDecoration(
                        // errorText: _passwordError,
                        hintText: ' Password',hintStyle: TextStyle(color: Colors.black),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              )),
          RoundButton(
              title: 'sign up',
              loading: loading,
              onTap: () {
                if(_formKey.currentState!.validate()){
                  signUp();
                }
              },),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 80),
            child: Row(
              children: [
                Text(
                  "Already have an acount? ",
                  style: TextStyle(color: Colors.grey),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => login_screen()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Text(
                      "Login ",
                      style: TextStyle(color: Colors.brown),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

