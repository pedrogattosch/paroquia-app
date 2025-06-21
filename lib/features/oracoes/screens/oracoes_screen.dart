import 'package:flutter/material.dart';

class OracoesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Orações')),
      body: Center(
        child: Text('Página de Orações', style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
