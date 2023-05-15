import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../objects/autor.dart';

final autorRef =
    FirebaseFirestore.instance.collection('Autor').withConverter<Autor>(
          fromFirestore: (snapshots, _) => Autor.fromJson(snapshots.data()!),
          toFirestore: (autor, _) => autor.toJson(),
        );

class TableAutor extends StatefulWidget {
  const TableAutor({super.key});

  @override
  State<TableAutor> createState() => _TableAutorState();
}

class _TableAutorState extends State<TableAutor> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Table(
          border: TableBorder.all(),
          defaultColumnWidth: FlexColumnWidth(),
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            TableRow(
              decoration: BoxDecoration(
                color: Color.fromRGBO(155, 60, 0, 1),
              ),
              children: <Widget>[
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Text(
                    'IdAutor',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Text(
                    'Nombre',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Text(
                    'Apellidos',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Text(
                    'Género',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Text(
                    'Fecha de Nacimiento',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Text(
                    'Pais de Nacimiento',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        StreamBuilder<QuerySnapshot<Autor>>(
          stream: autorRef.snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text(snapshot.error.toString()),
              );
            }

            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            }

            final data = snapshot.requireData;

            return Container();

            /* return ListView.builder(
                  itemCount: data.size,
                  itemBuilder: (context, index) {
                    return AutorItem(
                      data.docs[index].data(),
                      data.docs[index].reference,
                    );
                  },
                ); */
          },
        ),
      ],
    );
  }
}
