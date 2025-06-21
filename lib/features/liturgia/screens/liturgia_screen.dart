import 'package:flutter/material.dart';

class LiturgiaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Liturgia Diária')),
      body: Center(
        child: Text('Página da Liturgia', style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
