import 'package:agro_pro/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class YearlyProduction extends StatefulWidget {
  const YearlyProduction({Key? key}) : super(key: key);

  @override
  _YearlyProductionState createState() => _YearlyProductionState();
}

class _YearlyProductionState extends State<YearlyProduction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Year Wise Production Graphs'),
        centerTitle: true,
        backgroundColor: Colors.green[300],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height * .5,
                // width: MediaQuery.of(context).size.width * .95,
                decoration: kBoxStyle,
                child: SfCartesianChart(
                  primaryXAxis: CategoryAxis(),
                  title: ChartTitle(text: 'Yearly Production'),
                  legend:
                      Legend(isVisible: true, position: LegendPosition.bottom),
                  series: <LineSeries<SalesData, String>>[
                    LineSeries<SalesData, String>(
                        // Bind data source
                        dataSource: <SalesData>[
                          SalesData('Wheat', 15.3),
                          SalesData('Paddy', 8),
                          SalesData('Gram', 4),
                          SalesData('Potato', 7),
                          SalesData('Mustard', 5)
                        ],
                        xAxisName: 'Crop Name',
                        yAxisName: 'Quintals',
                        name: '2019',
                        xValueMapper: (SalesData sales, _) => sales.year,
                        yValueMapper: (SalesData sales, _) => sales.sales,
                        dataLabelSettings: DataLabelSettings(isVisible: true)),
                    LineSeries<SalesData, String>(
                        // Bind data source
                        dataSource: <SalesData>[
                          SalesData('Wheat', 17),
                          SalesData('Paddy', 9.2),
                          SalesData('Gram', 6.2),
                          SalesData('Potato', 8),
                          SalesData('Mustard', 3.4)
                        ],
                        xAxisName: 'Crop Name',
                        yAxisName: 'Quintals',
                        name: '2020',
                        xValueMapper: (SalesData sales, _) => sales.year,
                        yValueMapper: (SalesData sales, _) => sales.sales,
                        dataLabelSettings: DataLabelSettings(isVisible: true)),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),
              Text(
                'Crop Production Data - 2019',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CropValue(value: 0.76, head: 'Wheat', amount: '15.3', color: Colors.blue,),
                  CropValue(value: 0.4, head: 'Paddy', amount: '8', color: Colors.blue,),
                  CropValue(value: 0.2, head: 'Gram', amount: '4', color: Colors.blue,),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CropValue(value: 0.35, head: 'Potato', amount: '7', color: Colors.blue,),
                  CropValue(value: 0.25, head: 'Mustard', amount: '5', color: Colors.blue,)
                ],
              ),
              SizedBox(height: 30,),
              Text(
                'Crop Production Data - 2020',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CropValue(value: 0.85, head: 'Wheat', amount: '15.3', color: Colors.red,),
                  CropValue(value: 0.46, head: 'Paddy', amount: '8', color: Colors.red,),
                  CropValue(value: 0.31, head: 'Gram', amount: '4', color: Colors.red,),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CropValue(value: 0.4, head: 'Potato', amount: '7', color: Colors.red,),
                  CropValue(value: 0.17, head: 'Mustard', amount: '5', color: Colors.red,)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CropValue extends StatelessWidget {
  const CropValue({
    Key? key, required this.value, required this.head, required this.amount, required this.color,
  }) : super(key: key);

  final double value;
  final String head;
  final String amount;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      height: 110,
      width: 80,
      decoration: kBoxStyle.copyWith(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.greenAccent, width: .5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircularProgressIndicator(
            value: value,
            backgroundColor: Colors.green[100],
            color: color,
          ),
          Text(
            head,
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
          ),
          Text(
            amount,
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
          )
        ],
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
