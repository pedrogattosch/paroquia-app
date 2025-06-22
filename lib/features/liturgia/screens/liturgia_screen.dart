import 'package:flutter/material.dart';

class LiturgiaScreen extends StatelessWidget {
  final Map<String, String> liturgiaDoDia = {
    'data': '22 de Junho de 2025',
    'leitura1': '1ª Leitura: Gênesis 18,1-10a',
    'salmo': 'Salmo 14(15): "Senhor, quem morará em vossa casa?"',
    'evangelho': 'Evangelho: Lucas 10,38-42',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Liturgia Diária')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Liturgia de Hoje',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey[800],
              ),
            ),
            const SizedBox(height: 12),
            Text(
              liturgiaDoDia['data']!,
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
            const Divider(height: 32),
            _blocoTexto('1ª Leitura', liturgiaDoDia['leitura1']!),
            const SizedBox(height: 20),
            _blocoTexto('Salmo', liturgiaDoDia['salmo']!),
            const SizedBox(height: 20),
            _blocoTexto('Evangelho', liturgiaDoDia['evangelho']!),
          ],
        ),
      ),
    );
  }

  Widget _blocoTexto(String titulo, String conteudo) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titulo,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.blueGrey[700],
          ),
        ),
        const SizedBox(height: 6),
        Text(
          conteudo,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
