import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:urdu_bible/screen/auth/sigup_screen.dart';
import 'package:urdu_bible/screen/home.dart';
import 'auth/login_screen.dart';


class wellcom_screen extends StatefulWidget {
  const wellcom_screen({super.key});

  @override
  State<wellcom_screen> createState() => _wellcom_screenState();
}

class _wellcom_screenState extends State<wellcom_screen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<void> _signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        // The user canceled the sign-in
        return;
      }

      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await _auth.signInWithCredential(credential);
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
    } catch (e) {
      // Handle error
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Error signing in with Google: $e"),
      ));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/login_img.png',width: 350.0,),
            Container(
              padding: EdgeInsets.only(left: 50,right: 50),
              child: Text("عقل و حکمت کے لئے، بائبل \n                 ہمیشہ ہاتھ میں۔",
                style: GoogleFonts.jomhuria(
                  textStyle: TextStyle(fontSize: 35,color: Colors.brown),),
                )
            ),
            Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(
                        builder: (context) => singup_screen())
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2,color: Colors.brown),
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child: Center(child: Text('Sign up')),
                    ),
                  ),
                ),
                SizedBox(width: 100,),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(
                        builder: (context) => login_screen())
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2,color: Colors.brown),
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child: Center(child: Text("Login")),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:  GestureDetector(
                onTap: _signInWithGoogle,
                child: Container(
                    width: 310,
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2,color: Colors.brown),
                        borderRadius: BorderRadius.circular(25)
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Image.asset('assets/images/g.png',width: 50,),
                        ),
                        Text('Continue with Google ')

                      ],
                    )
                ),
              ),
            ),




          ],

        ),
      ),

    );
  }
}


//
//
//
//
//
//
//
