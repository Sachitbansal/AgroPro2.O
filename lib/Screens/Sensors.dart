import 'package:agro_pro/Widgets/table.dart';
import 'package:flutter/material.dart';

class SensorInformation extends StatelessWidget {
  const SensorInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        title: Text('Sensor Readings'),
        centerTitle: true,
        backgroundColor: Colors.green[400],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.green[100],
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
              ),
              child: Text(
                'Bot Battery: 66%',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SensorTable(),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Sensor(
                  title: 'Temperature',
                  image:
                      'https://st2.depositphotos.com/3921439/7448/v/950/depositphotos_74489179-stock-illustration-the-thermometer-icon-high-temperature.jpg',
                  value: '24',
                ),
                Sensor(
                  title: 'Soil Moisture',
                  image:
                      'https://st4.depositphotos.com/1005049/25167/v/600/depositphotos_251673908-stock-illustration-soil-profile-and-horizons-piece.jpg',
                  value: '47%',
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Sensor(
                  title: 'Humidity',
                  image:
                      'https://previews.123rf.com/images/arcady31/arcady311811/arcady31181100028/111262193-abstract-humidity-vector-icon.jpg',
                  value: '35%',
                ),
                Sensor(
                  title: 'Soil Ph',
                  image:
                      'https://5.imimg.com/data5/MH/WL/MY-4328631/ph-paper-2f-litmus-paper-1-x-80-strips-kit-500x500.jpg',
                  value: '6.2',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Sensor extends StatelessWidget {
  const Sensor({required this.title, required this.image, required this.value});

  final String image, title, value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 130,
          width: 130,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Color(0xFF66BB6A), width: 2),
              image: DecorationImage(image: NetworkImage(image))),
        ),
        Text(
          title,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        ),
        Text(
          value,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
