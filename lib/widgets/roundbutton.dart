import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final bool loading;
  final String title;
  final VoidCallback onTap ;
  const RoundButton(
      {Key? key,
      required this.title,
      this.loading = false, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: 300,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.brown, borderRadius: BorderRadius.circular(20)),
          child: Center(
              child: loading ? CircularProgressIndicator(color: Colors.white,strokeWidth: 3,) :
              Text(
            title,
            style: TextStyle(color: Colors.white),
          )),
        ),
      ),
    );
  }
}
