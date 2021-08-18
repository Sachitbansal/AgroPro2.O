import 'package:flutter/material.dart';

class CropDetails extends StatefulWidget {
  const CropDetails({Key? key, required this.appBarHeading, required this.url})
      : super(key: key);

  final String appBarHeading;
  final String url;

  @override
  _CropDetailsState createState() => _CropDetailsState();
}

class _CropDetailsState extends State<CropDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.appBarHeading),
        backgroundColor: Colors.green[400],
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(70),
                ),
                image: DecorationImage(
                    image: NetworkImage(widget.url), fit: BoxFit.cover),
                boxShadow: [
                  BoxShadow(
                      color: Colors.green,
                      blurRadius: 5,
                      spreadRadius: 2,
                      offset: Offset(0.5, 0.5))
                ]),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .35,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .03,
          ),
          Container(
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                border: Border.all(color: Colors.green)),
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Text(
                    'Information',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Millet is a cereal grain that belongs to the Poaceae family, commonly known as the grass family. It\'s widely consumed in developing countries throughout Africa and Asia. While it may look like a seed, millet\'s nutritional profile is similar to that of sorghum and other cereals',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
