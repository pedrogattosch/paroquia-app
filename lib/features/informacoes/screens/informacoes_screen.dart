import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InformacoesScreen extends StatelessWidget {
  final String endereco = 'Rua da Igreja, 123 - Centro, Cidade/UF';
  final String telefone = '(11) 99999-9999';
  final String email = 'contato@paroquiameninodeus.org';

  final List<String> horariosMissa = [
    'Domingo - 08h, 10h e 19h',
    'Terça e Quinta - 18h30',
    'Sábado - 17h',
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
      appBar: AppBar(title: Text('Informações')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Endereço:', style: _titulo()),
            Text(endereco, style: _texto()),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: _abrirNoMaps,
              icon: Icon(Icons.map),
              label: Text('Ver no Mapa'),
            ),
            const SizedBox(height: 24),
            Text('Contato:', style: _titulo()),
            Text('Telefone: $telefone', style: _texto()),
            Text('Email: $email', style: _texto()),
            const SizedBox(height: 24),
            Text('Horários das Missas:', style: _titulo()),
            ...horariosMissa.map((h) => Text('• $h', style: _texto())),
          ],
        ),
      ),
    );
  }

  TextStyle _titulo() => TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.blueGrey[700],
  );

  TextStyle _texto() => TextStyle(fontSize: 16);
}
