import 'package:flutter/material.dart';

class CropWidget extends StatelessWidget {
  final String image;

  final String heading;
  final void Function() screen;
  const CropWidget({
    Key? key,
    required this.image,
    required this.heading,
    required this.screen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: screen,
      child: Container(
          height: MediaQuery.of(context).size.width * .45,
          width: MediaQuery.of(context).size.width * .45,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.green, width: 2),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Color(0xFFB9F6CA),
                spreadRadius: 1,
                blurRadius: 10,
                offset: Offset(0, 2), // changes position of shadow
              ),
            ],
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                  image,
                )),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(0, 0, 0, .2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Align(
              alignment: Alignment(0, 1),
              child: Text(
                heading,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold
                  // backgroundColor: Colors.greenAccent
                ),
              ),
            ),
          )),
    );
  }
}