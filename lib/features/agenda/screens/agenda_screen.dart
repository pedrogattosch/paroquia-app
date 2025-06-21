import 'package:flutter/material.dart';

class AgendaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Agenda Paroquial')),
      body: Center(
        child: Text('Página da Agenda', style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
