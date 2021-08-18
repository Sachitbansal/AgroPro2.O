import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GetInTouch extends StatelessWidget {
  const GetInTouch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      body: Column(
        children: [
          Container(
            height: 350,
            decoration: BoxDecoration(
            // color: Colors.green[400],
                image: DecorationImage(
                    image: NetworkImage('https://i.ibb.co/PN4dXvF/35884.jpg'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.greenAccent,
                      offset: Offset(0, 2.5),
                      blurRadius: 5)
                ]),
            child: Stack(
              children: [
                Positioned(
                  bottom: 20,
                  right: MediaQuery.of(context).size.width * .26,
                  child: Text(
                    'Drop Us a Line',
                    style: TextStyle(
                        fontSize: 25,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Colors.lightBlueAccent),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .05,
          ),
          ContactCompo(
            text: 'H-82, South City 2, Sector 50, Gurugram',
            icon: Icons.location_on,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .02,
          ),
          ContactCompo(
            text: '+91-9501006994, +91-9354416611, +91-7303218996',
            icon: Icons.phone_android,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .02,
          ),
          ContactCompo(icon: Icons.mail, text: 'sachitbansal2006@gmail.com')
        ],
      ),
    );
  }
}

class ContactCompo extends StatelessWidget {
  const ContactCompo({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[50],
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border.all(color: Colors.green)),
      width: MediaQuery.of(context).size.width * .6,
      // height: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: Icon(
              icon,
              size: 40,
              color: Colors.green,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 17,
                color: Colors.black45,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
