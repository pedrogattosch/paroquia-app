import 'package:flutter/material.dart';

class PastoraisScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pastorais')),
      body: Center(
        child: Text('Página de Pastorais', style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
