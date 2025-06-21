import 'package:flutter/material.dart';

class DoacoesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Doações')),
      body: Center(
        child: Text('Página de Doações', style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
