
import 'package:flutter/material.dart';

import 'login_screen.dart';

class wellcom_screen extends StatelessWidget {
  const wellcom_screen({super.key});

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
              child: Text("عقل و حکمت کے لئے، بائبل ہمیشہ ہاتھ میں۔",
                style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.brown),),
            ),

            Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(
                        builder: (context) => login_screen())
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.brown,
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child: Center(child: Text('Sign up',style: TextStyle(color: Colors.white),)),
                    ),
                  ),
                ),
                SizedBox(width: 100,),
                Padding(
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
                )
              ],
            ),
            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.all(8.0),
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
                      padding: const EdgeInsets.only(left: 55),
                      child: Image.asset('assets/images/fb.png',width: 20,),
                    ),
                    Text('Contiune with Facebook ')

                  ],
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
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
                      Text('Contiune with Google ')

                    ],
                  )
              ),
            ),




          ],

        ),
      ),

    );
  }
}
