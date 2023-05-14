import 'package:bookmind_web_admin/screens/tables_creator.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(155, 60, 0, 1),
        title: const Text('Panel de Administrador de BookMind'),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 25,
            left: 25,
            right: 25,
            child: TableCreator(),
          ),
        ],
      ),
    );
  }
}
