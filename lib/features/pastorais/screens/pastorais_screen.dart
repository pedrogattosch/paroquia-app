import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PastoraisScreen extends StatelessWidget {
  final List<Map<String, String>> pastorais = [
    {
      'nome': 'Nome',
      'descricao': 'Descrição',
      'horario': 'Quartas às 19h30',
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
          'Pastorais',
          style: GoogleFonts.robotoSlab(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: pastorais.length,
        itemBuilder: (context, index) {
          final pastoral = pastorais[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16, vertical: 12),
              title: Text(
                pastoral['nome']!,
                style: GoogleFonts.openSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.blueGrey[800],
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      pastoral['descricao']!,
                      style: GoogleFonts.openSans(
                        fontSize: 14,
                        color: Colors.blueGrey[600],
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      'Encontros: ${pastoral['horario']}',
                      style: GoogleFonts.openSans(
                        fontSize: 13,
                        color: Colors.blue[800],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}