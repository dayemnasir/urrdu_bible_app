
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReusableContainer extends StatelessWidget {
   ReusableContainer({required this.text, required this.image});

  late Image image ;
  late String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      decoration: BoxDecoration(
        color: Color(0xffDAC09B),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          image,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: GoogleFonts.jomhuria(
                  textStyle:  TextStyle(
                    color: Color(0xff754A37),
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
              SizedBox(height: 20),
              Container(
                width: 90,
                height: 40,
                decoration: BoxDecoration(
                    border: Border.all(width: 2,color: Colors.brown),
                    borderRadius: BorderRadius.circular(20)

                ),
                child: Center(child: Text('شروع کریں',
                style: GoogleFonts.jomhuria(
                  textStyle: TextStyle(
                    color: Colors.brown,
                    fontSize: 23
                  )
                )
                )),
              )
            ],
          ),
        ],
      )
    );
  }
}
