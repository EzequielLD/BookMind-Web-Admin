import 'package:flutter/material.dart';

class TableCreator extends StatelessWidget {
  const TableCreator({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(),
      defaultColumnWidth: IntrinsicColumnWidth(),
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        TableRow(
          decoration: BoxDecoration(
            color: Color.fromRGBO(155, 60, 0, 1),
          ),
          children: <Widget>[
            TableCell(
              child: Container(
                height: 32,
                color: Colors.green,
              ),
            ),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: Text(
                'Nombre',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            TableCell(
              child: Container(
                //height: 64,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
