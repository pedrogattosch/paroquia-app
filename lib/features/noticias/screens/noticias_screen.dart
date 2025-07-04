import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoticiasScreen extends StatelessWidget {
  final List<Map<String, String>> noticias = [
    {
      'titulo': 'Título',
      'descricao': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean at tincidunt leo. Proin non ante porttitor, ornare magna ac, posuere neque. Praesent rhoncus sagittis nulla sed lobortis. Mauris eu nulla lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec tempor interdum dui sed ornare. Vestibulum ex magna, dignissim sit amet scelerisque et, elementum ut enim. Donec iaculis a eros quis ultricies. Nullam ac lacus imperdiet, consectetur orci sit amet, lacinia est.',
      'data': '20/06/2025',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF1565C0), Color(0xFF42A5F5)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        title: Text(
          'Notícias',
          style: GoogleFonts.robotoSlab(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: noticias.length,
        itemBuilder: (context, index) {
          final noticia = noticias[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    noticia['titulo']!,
                    style: GoogleFonts.openSans(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.blueGrey[800],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    noticia['descricao']!,
                    style: GoogleFonts.openSans(
                      fontSize: 14,
                      color: Colors.blueGrey[600],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Publicado em: ${noticia['data']}',
                    style: GoogleFonts.openSans(
                      fontSize: 12,
                      color: Colors.blueGrey[400],
                    ),
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