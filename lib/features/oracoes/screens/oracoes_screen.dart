import 'package:flutter/material.dart';

class OracoesScreen extends StatelessWidget {
  final List<Map<String, String>> oracoes = [
    {
      'titulo': 'Pai Nosso',
      'texto': '''Pai nosso que estais no céu,
santificado seja o vosso nome;
venha a nós o vosso reino;
seja feita a vossa vontade,
assim na terra como no céu...

(Oração completa aqui)'''
    },
    {
      'titulo': 'Ave Maria',
      'texto': '''Ave Maria, cheia de graça,
o Senhor é convosco,
bendita sois vós entre as mulheres...

(Oração completa aqui)'''
    },
    {
      'titulo': 'Creio (Símbolo dos Apóstolos)',
      'texto': '''Creio em Deus Pai todo-poderoso,
criador do céu e da terra...

(Oração completa aqui)'''
    },
    {
      'titulo': 'Glória ao Pai',
      'texto': '''Glória ao Pai, ao Filho e ao Espírito Santo,
como era no princípio, agora e sempre. Amém.'''
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Orações')),
      body: ListView.builder(
        itemCount: oracoes.length,
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) {
          final oracao = oracoes[index];
          return Card(
            elevation: 3,
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              title: Text(oracao['titulo']!),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => OracaoDetalheScreen(
                      titulo: oracao['titulo']!,
                      texto: oracao['texto']!,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class OracaoDetalheScreen extends StatelessWidget {
  final String titulo;
  final String texto;

  const OracaoDetalheScreen({
    Key? key,
    required this.titulo,
    required this.texto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(titulo)),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Text(
          texto,
          style: TextStyle(fontSize: 16, height: 1.5),
        ),
      ),
    );
  }
}
