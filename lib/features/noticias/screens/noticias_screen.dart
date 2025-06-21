import 'package:flutter/material.dart';

class NoticiasScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notícias')),
      body: Center(
        child: Text('Página de Notícias', style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
