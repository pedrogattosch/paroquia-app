import 'package:flutter/material.dart';

class PastoraisScreen extends StatelessWidget {
  final List<Map<String, String>> pastorais = [
    {
      'nome': 'Pastoral da Juventude',
      'descricao': 'Grupo voltado para os jovens da comunidade.',
      'horario': 'Quartas às 19h30',
    },
    {
      'nome': 'Ministério de Música',
      'descricao': 'Responsável pela animação das missas e eventos.',
      'horario': 'Terças às 19h',
    },
    {
      'nome': 'Pastoral da Família',
      'descricao': 'Apoio às famílias da paróquia.',
      'horario': 'Sextas às 20h',
    },
    {
      'nome': 'Liturgia',
      'descricao': 'Organização das celebrações litúrgicas.',
      'horario': 'Domingos antes da missa das 10h',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pastorais')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: pastorais.length,
        itemBuilder: (context, index) {
          final pastoral = pastorais[index];
          return Card(
            elevation: 4,
            margin: const EdgeInsets.only(bottom: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16),
              title: Text(
                pastoral['nome']!,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),
                  Text(pastoral['descricao']!),
                  const SizedBox(height: 8),
                  Text(
                    'Encontros: ${pastoral['horario']}',
                    style: TextStyle(color: Colors.grey[600], fontSize: 13),
                  ),
                ],
              ),
              trailing: Icon(Icons.groups),
            ),
          );
        },
      ),
    );
  }
}
