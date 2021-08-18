import 'package:flutter/material.dart';

import '../constants.dart';

class SensorTable extends StatelessWidget {
  const SensorTable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: Color(0xFF66BB6A), width: 2),
          color: Colors.green[50]),
      columns: [
        DataColumn(
            label: Text(
          'Sensor',
          style: kTableHeader,
        )),
        DataColumn(label: Text('Reading', style: kTableHeader)),
      ],
      rows: [
        DataRow(cells: [
          DataCell(
              Text('Temperature', style: kTableHeader.copyWith(fontSize: 20))),
          DataCell(Text('24°C', style: kTableHeader.copyWith(fontSize: 20))),
        ]),
        DataRow(cells: [
          DataCell(Text('Soil Moisture',
              style: kTableHeader.copyWith(fontSize: 20))),
          DataCell(Text('47%', style: kTableHeader.copyWith(fontSize: 20))),
        ]),
        DataRow(cells: [
          DataCell(
              Text('Humidity', style: kTableHeader.copyWith(fontSize: 20))),
          DataCell(Text('35%', style: kTableHeader.copyWith(fontSize: 20))),
        ]),
        DataRow(cells: [
          DataCell(Text('Soil Ph', style: kTableHeader.copyWith(fontSize: 20))),
          DataCell(Text('6.2', style: kTableHeader.copyWith(fontSize: 20))),
        ]),
      ],
    );
  }
}
