import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton(this.press, this.text, this.textColor, this.bgColor);

  final void Function() press;
  final String text;
  final Color textColor;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
            backgroundColor: bgColor,
          ),
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
                fontSize: 16,
                letterSpacing: 1.3),
          ),
        ),
      ),
    );
  }
}
