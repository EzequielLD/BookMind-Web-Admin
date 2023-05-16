import 'package:bookmind_web_admin/screens/table_autor.dart';
import 'package:bookmind_web_admin/screens/table_libro.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(155, 60, 0, 1),
        title: const Center(child: Text('Panel de Administrador de BookMind')),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 25,
              left: 25,
              right: 25,
            ),
            child: TableAutor(),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 25,
              left: 25,
              right: 25,
            ),
            child: TableLibro(),
          ),
        ],
      ),
    );
  }
}
