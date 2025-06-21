import 'package:flutter/material.dart';

class InformacoesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Informações')),
      body: Center(
        child: Text('Página de Informações', style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
