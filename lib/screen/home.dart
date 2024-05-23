import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> imageList = [
      Image.asset('images/1.jpg'),
      Image.asset('images/2.jpg'),
      Image.asset('images/3.jpg'),
    ];
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40,),
          Center(
            child: Text(
              'آج کی آیت',
              style: TextStyle(
                color: Color(0xff754A37),
            fontSize: 50,
          ),),
          ),
          Container(
            margin: EdgeInsets.only(left: 180,top: 25),
            child: Text(
                'یوحنا 3:16',
                style:  TextStyle(
                color: Color(0xff754A37),
            fontSize: 25,
          ),),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
           width: 400,
            child: Expanded(
              child: Text(
                  ' کِیُونکہ خُدا نے دُنیا سے اَیسی محبّت رکھّی کہ اُس نے اپنا اِکلَوتا بَیٹا بخش دِیا تاکہ جو کوئی اُس پر اِیمان لائے ہلاک نہ ہو بلکہ ہمیشہ کی زِندگیپائے۔',
                  style:  TextStyle(
                  color: Color(0xff754A37),
              fontSize: 30,
                        ),),
            ),
          ),
          SizedBox(height: 20,),
          // CarouselSlider(
          //   items: imageList,
          //   carouselController: CarouselController(),
          //   options: CarouselOptions(
          //     autoPlay: true,
          //     enlargeCenterPage: true,
          //     aspectRatio: 16/9,
          //     viewportFraction: 0.8,
          //   ),
          // ),

        ],
      ),
    );
  }
}