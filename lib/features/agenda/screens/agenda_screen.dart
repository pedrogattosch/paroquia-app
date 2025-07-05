import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AgendaScreen extends StatelessWidget {
  final Map<String, List<String>> programacaoSemana = {
    'Domingo': [
      '08h00 - Missa',
      '19h00 - Missa',
    ],
    'Segunda': [

    ],
    'Terça': [

    ],
    'Quarta': [
      '19h00 - Missa',
    ],
    'Quinta': [

    ],
    'Sexta': [

    ],
    'Sábado': [
      '19h00 - Missa',
    ],
  };

  @override
  Widget build(BuildContext context) {
    final dias = programacaoSemana.keys.toList();

    return DefaultTabController(
      length: dias.length,
      child: Scaffold(
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
            'Agenda',
            style: GoogleFonts.robotoSlab(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.white,
            labelStyle: GoogleFonts.openSans(fontWeight: FontWeight.w600),
            unselectedLabelColor: Colors.white,
            labelColor: Colors.white,
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
                      eventos[index],
                      style: GoogleFonts.openSans(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueGrey[800],
                      ),
                    ),
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