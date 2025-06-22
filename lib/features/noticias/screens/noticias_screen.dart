import 'package:flutter/material.dart';

class NoticiasScreen extends StatelessWidget {
  final List<Map<String, String>> noticias = [
    {
      'titulo': 'Festa do Padroeiro',
      'descricao': 'Venha celebrar conosco a Festa do Menino Deus!',
      'data': '20/06/2025',
    },
    {
      'titulo': 'Campanha do Agasalho',
      'descricao': 'Estamos arrecadando agasalhos até o final do mês.',
      'data': '15/06/2025',
    },
    {
      'titulo': 'Curso de Batismo',
      'descricao': 'Inscrições abertas para o curso preparatório.',
      'data': '10/06/2025',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notícias')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: noticias.length,
        itemBuilder: (context, index) {
          final noticia = noticias[index];
          return Card(
            elevation: 4,
            margin: const EdgeInsets.only(bottom: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16),
              title: Text(
                noticia['titulo']!,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),
                  Text(noticia['descricao']!),
                  const SizedBox(height: 8),
                  Text(
                    'Publicado em: ${noticia['data']}',
                    style: TextStyle(color: Colors.grey[600], fontSize: 12),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
