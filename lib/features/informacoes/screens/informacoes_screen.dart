import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

class InformacoesScreen extends StatelessWidget {
  final String endereco = 'Rua Porto União, 901 - Jd. Porto Alegre, Toledo/PR';
  final String telefone = '(45) 3278-5086';
  final String whatsapp = '(45) 99922-0066';
  final String email = 'meninodeus@diocesetoledo.org';

  final List<String> horariosMissa = [
    'Quarta - 19h',
    'Sábado - 19h',
    'Domingo - 07h30 e 19h',
  ];

  final Uri mapsUrl = Uri.parse(
    'https://www.google.com/maps/search/?api=1&query=Paróquia+Menino+Deus',
  );

  Future<void> _abrirNoMaps() async {
    if (await canLaunchUrl(mapsUrl)) {
      await launchUrl(mapsUrl, mode: LaunchMode.externalApplication);
    } else {
      throw 'Não foi possível abrir o Google Maps';
    }
  }

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
          'Informações',
          style: GoogleFonts.robotoSlab(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Endereço:', style: _titulo()),
            Text(endereco, style: _texto()),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _abrirNoMaps,
              child: Text(
                'Ver no mapa',
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w600,
                  color: Colors.blueGrey[800],
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[100],
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              ),
            ),
            const SizedBox(height: 24),
            Text('Contato:', style: _titulo()),
            Text('Telefone: $telefone', style: _texto()),
            Text('WhatsApp: $whatsapp', style: _texto()),
            Text('Email: $email', style: _texto()),
            const SizedBox(height: 24),
            Text('Horários das missas:', style: _titulo()),
            ...horariosMissa.map((h) => Text('• $h', style: _texto())),
          ],
        ),
      ),
    );
  }

  TextStyle _titulo() => GoogleFonts.openSans(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.blueGrey[800],
  );

  TextStyle _texto() => GoogleFonts.openSans(
    fontSize: 16,
    color: Colors.blueGrey[700],
  );
}