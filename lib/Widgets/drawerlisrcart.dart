import 'package:flutter/material.dart';

class DrawerListCard extends StatelessWidget {
  const DrawerListCard({

    required this.item,
    required this.icon,
    required this.press,
  });

  final String item;
  final IconData icon;
  final void Function() press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Padding(
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
        child: Container(
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey))),
          child: InkWell(
            onTap: press,
            splashColor: Colors.greenAccent,
            child: Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(icon),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          item,
                          style: TextStyle(fontSize: 16),
                        ),
                      )
                    ],
                  ),
                  Icon(Icons.arrow_forward)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
