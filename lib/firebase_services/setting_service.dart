import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:urdu_bible/screen/auth/login_screen.dart';

class setting_services extends StatelessWidget {
  const setting_services({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = FirebaseAuth.instance;
    final user = auth.currentUser;
    return Scaffold(
      appBar: AppBar(
        title: Text('Settinges',style: TextStyle(color: Colors.brown),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 100,),
          Padding(
            padding: const EdgeInsets.all(15),
            child: InkWell(
              onTap: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>about_Servces()));

              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 5),
                          color: Color(0xffDAC09B).withOpacity(.2),
                          spreadRadius: 3,
                          blurRadius: 10
                      )
                    ]
                ),
                child: ListTile(
                  title: Text('About',style: TextStyle(color: Colors.brown),),
                  leading: Image.asset('assets/images/about_img.png',width: 30,),
                  trailing: Icon(Icons.arrow_forward,color: Colors.grey,),
                ),
              ),
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(15),
            child: InkWell(
              onTap: ()async{

                if(user != null){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => login_screen()));
                }
                await FirebaseAuth.instance.signOut();
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 5),
                          color:  Color(0xffDAC09B).withOpacity(.2),
                          spreadRadius: 3,
                          blurRadius: 10
                      )
                    ]
                ),
                child: ListTile(
                  title: Text('Log out',style: TextStyle(color: Colors.brown),),
                  leading: Icon(CupertinoIcons.lock_rotation_open,color: Colors.brown,),
                  trailing: Icon(Icons.arrow_forward,color: Colors.grey,),
                ),
              ),
            ),
          ),



        ],
      ),
    );
  }
}