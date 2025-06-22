import 'package:flutter/material.dart';

class AgendaScreen extends StatelessWidget {
  final Map<String, List<String>> programacaoSemana = {
    'Domingo': [
      '08h00 - Missa com crianças',
      '10h00 - Missa solene',
      '19h00 - Grupo de Oração',
    ],
    'Segunda': [
      '19h30 - Terço dos Homens',
    ],
    'Terça': [
      '18h00 - Missa',
      '19h00 - Ensaio do coral',
    ],
    'Quarta': [
      '19h30 - Grupo de Jovens',
    ],
    'Quinta': [
      '15h00 - Adoração ao Santíssimo',
      '18h30 - Missa',
    ],
    'Sexta': [
      '19h00 - Reunião da Pastoral Familiar',
    ],
    'Sábado': [
      '17h00 - Missa',
      '18h30 - Preparação para Batismo',
    ],
  };

  @override
  Widget build(BuildContext context) {
    final dias = programacaoSemana.keys.toList();

    return DefaultTabController(
      length: dias.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Agenda da Semana'),
          bottom: TabBar(
            isScrollable: true,
            tabs: dias.map((dia) => Tab(text: dia)).toList(),
          ),
        ),
        body: TabBarView(
          children: dias.map((dia) {
            final eventos = programacaoSemana[dia]!;
            return ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: eventos.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.only(bottom: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 3,
                  child: ListTile(
                    leading: Icon(Icons.event, color: Colors.blueGrey),
                    title: Text(eventos[index]),
                  ),
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
