import 'package:flutter/material.dart';

const Color primary = Color.fromRGBO(52, 43, 37, 1);
const Color gray = Color.fromRGBO(137, 137, 137, 1);
const Color secoundry = Color.fromRGBO(198, 116, 27, 1);
const Color secoundryLight = Color.fromRGBO(226, 185, 141, 1);

const stepOneTitle = "Farm Driving";
const stepOneContent =
    "There are all kinds of equipment to build your farm better harvest";
const stepTwoTitle = "Plant Growing";
const stepTwoContent =
    "Be part of the agriculture and gives your team the  power you need to do your best";
const stepThreeTitle = "Fast Harvesting";
const stepThreeContent =
    "Your will be proud to be part of agriculture and it’s harvest";

final BoxDecoration boxDecoration = BoxDecoration(color: Colors.white,
    // borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
          color: Color.fromRGBO(177, 230, 192, .3),
          blurRadius: 20.0,
          offset: Offset(0, 10))
    ]);

final BoxDecoration kBoxStyle = BoxDecoration(
    border: Border.all(color: Colors.greenAccent, width: 2),
    borderRadius: BorderRadius.all(Radius.circular(20)),
    boxShadow: [
      BoxShadow(
        color: Color(0xFFC8E6C9),
        spreadRadius: 3,
        blurRadius: 5,
        offset: Offset(2, 4), // changes position of shadow
      ),
    ],
    color: Colors.white);

const MaterialColor kPrimaryColor = const MaterialColor(
  0xFF4CAF50,
  const <int, Color>{
    50: const Color(0xFFE8F5E9),
    100: const Color(0xFFC8E6C9),
    200: const Color(0xFFA5D6A7),
    300: const Color(0xFF81C784),
    400: const Color(0xFF66BB6A),
    500: const Color(0xFF4CAF50),
    600: const Color(0xFF43A047),
    700: const Color(0xFF388E3C),
    800: const Color(0xFF2E7D32),
    900: const Color(0xFF1B5E20),
  },
);

const TextStyle kTableHeader = TextStyle(fontSize: 25);

final Decoration kDecorattion = BoxDecoration(
  color: Colors.white,
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
);
