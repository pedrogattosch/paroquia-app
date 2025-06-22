import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DoacoesScreen extends StatelessWidget {
  final String chavePix = 'pix@paroquiameninodeus.org';
  final String mensagem =
      'Ajude a manter a casa de Deus. Sua contribuição é essencial para continuarmos com as atividades pastorais e manutenção da paróquia.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Doações')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Contribua com a Paróquia',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey[800],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Text(
              mensagem,
              style: TextStyle(fontSize: 16, color: Colors.black87),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Container(
              height: 180,
              width: 180,
              color: Colors.grey[300],
              alignment: Alignment.center,
              child: Text('QR Code\n(Pix)', textAlign: TextAlign.center),
            ),
            const SizedBox(height: 16),
            SelectableText(
              chavePix,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            ElevatedButton.icon(
              onPressed: () {
                Clipboard.setData(ClipboardData(text: chavePix));
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Chave Pix copiada!')),
                );
              },
              icon: Icon(Icons.copy),
              label: Text('Copiar chave Pix'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
                foregroundColor: Colors.white,
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton.icon(
              onPressed: () {
                // Exemplo de redirecionamento para PagSeguro, Mercado Pago, etc.
              },
              icon: Icon(Icons.link),
              label: Text('Doar via site'),
            ),
          ],
        ),
      ),
    );
  }
}
