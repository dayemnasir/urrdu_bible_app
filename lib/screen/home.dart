import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:urdu_bible/firebase_services/setting_service.dart';

import '../widgets/reusable_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40,),
          Center(
              child: Row(
                children: [
                  SizedBox(width: 20,),
                  InkWell(
                    onTap: (){},
                      child: Icon(Icons.search,size: 30,color: Colors.brown,)),
                  SizedBox(width: 80,),
                  Text(
                              'آج کی آیت',
                              style: GoogleFonts.jomhuria(
                  textStyle: TextStyle(
                    color: Color(0xff754A37),
                    fontSize: 50,
                  ),
                              ),
                            ),
                ],
              )),
          Container(
            margin: EdgeInsets.only(left: 180,top: 25),
            child: Text(
              'یوحنا 3:16',
              style:  TextStyle(
                color: Color(0xff754A37),
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(left: 45),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              width: 400,
              child: Expanded(
                  child: Text(
                    '   کِیُونکہ خُدا نے دُنیا سے اَیسی\n       محبّت رکھّی کہ اُس نے اپنا \n     اِکلَوتا بَیٹا بخش دِیا تاکہ جو \n کوئی اُس پر اِیمان لائے ہلاک نہ\n    ہو بلکہ ہمیشہ کی زِندگیپائے۔  ',

                    style: GoogleFonts.jomhuria(
                      textStyle:  TextStyle(
                        color: Color(0xff754A37),
                        fontSize: 36,
                      ),),
                  )
              ),
            ),
          ),
          SizedBox(height: 15,),

           SingleChildScrollView(
              scrollDirection: Axis.horizontal,
                child: Padding(
                 padding: const EdgeInsets.only(left: 20),
                 child: Row(
                   children: [
                  ReusableContainer(text: 'بائبل کی رہنمائی', image: Image.asset('assets/images/1.png', width: 120,)),
                     SizedBox(width: 10,),
                     ReusableContainer(text: 'آج کی دعایں', image: Image.asset('assets/images/2.png', width: 120,)),
                     SizedBox(width: 10,),
                     ReusableContainer(text: '    آج کی آیت یاد\n                رکھیں', image: Image.asset('assets/images/3.png', width: 120,)),
                     SizedBox(width: 10,),
                     ReusableContainer(text: 'خدا کا کلام دوسروں \n           تک پہنچایں', image:Image.asset('assets/images/4.png', width: 120,) ),
                     SizedBox(width: 10,),
            ]
            ),
            ),
            )
        ],
      ),
      bottomNavigationBar: Container(
        width:100,
        height: 70,
        decoration: const BoxDecoration(
          // color: Color(0xFFDAC09B),
        ),
        child:  Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BottomTabs(text: 'home', icons: Icons.home, ontap: () {                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>web_language()));
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>home_screen()));
              },),
              BottomTabs(text: 'notifications', icons: Icons.notifications_on, ontap: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>ux_language()));

              },),
              BottomTabs(text: 'bible', icons: Icons.menu_book_sharp,ontap: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>ux_language()));

              },),
              // BottomTabs(text: 'bookmarks', icons: Icons.bookmark_add_outlined,ontap: (){
              // // Navigator.push(context, MaterialPageRoute(builder: (context)=>profile_screen()));
              //
              // },),
              BottomTabs(text: 'Settings', icons: Icons.settings, ontap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> setting_services()));

              },),


            ],
          ),
        ),
      ),
    );
  }
}
class BottomTabs extends StatelessWidget {
  BottomTabs({required this.text, required this.icons, required this.ontap});
  String text;
  IconData icons;
  Function() ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:ontap,
      child: Column(
        children: [
          Icon(icons,color: Colors.brown,),
          Text(text,style: TextStyle(color: Colors.brown),)
        ],
      ),
    );
  }
}