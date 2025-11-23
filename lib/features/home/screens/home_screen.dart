import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  // Card para notícias e eventos
  Widget _buildContentCard({
    required String title,
    required String subtitle,
    required IconData icon,
    required VoidCallback onTap,
    Color color = const Color(0xFF1565C0),
  }) {
    return Card(
      color: Colors.grey[100],
      elevation: 0,
      margin: const EdgeInsets.only(bottom: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        leading: Icon(icon, color: color),
        title: Text(title, style: GoogleFonts.openSans(fontWeight: FontWeight.w600, color: Colors.blueGrey[800])),
        subtitle: Text(subtitle, style: GoogleFonts.openSans(fontSize: 14, color: Colors.blueGrey[600])),
        trailing: const Icon(Icons.chevron_right),
        onTap: onTap,
      ),
    );
  }

  // Banner com mensagem bíblica
  Widget _buildMessageBanner(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 24),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF42A5F5), Color(0xFF1565C0)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Ícone decorativo adicionado
          const Icon(
            Icons.book_outlined,
            color: Colors.white,
            size: 28,
          ),
          const SizedBox(height: 12),
          Text(
            'João 14:6',
            style: GoogleFonts.robotoSlab(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          // Linha divisória sutil
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            height: 2,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.5), 
              borderRadius: BorderRadius.circular(1),
            ),
          ),
          Text(
            '"Eu sou o caminho, a verdade e a vida. Ninguém vem ao Pai, senão por mim."',
            style: GoogleFonts.openSans(
              fontSize: 18,
              fontStyle: FontStyle.italic,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        automaticallyImplyLeading: false,
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
          'Paróquia Menino Deus',
          style: GoogleFonts.robotoSlab(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // 1. Frase bíblica em destaque
            _buildMessageBanner(context),
            
            // 2. Pré-visualização de notícias
            Text(
              'Últimas notícias',
              style: GoogleFonts.openSans(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.blue[800],
              ),
            ),
            const SizedBox(height: 12),
            _buildContentCard(
              title: 'Missa',
              subtitle: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              icon: Icons.article_outlined,
              onTap: () => Navigator.pushNamed(context, '/noticias'),
            ),
            _buildContentCard(
              title: 'Missa',
              subtitle: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              icon: Icons.article_outlined,
              onTap: () => Navigator.pushNamed(context, '/noticias'),
            ),
            
            const SizedBox(height: 24),
            
            // 3. Pré-visualização de eventos
            Text(
              'Próximos eventos',
              style: GoogleFonts.robotoSlab(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.blue[800],
              ),
            ),
            const SizedBox(height: 12),
            _buildContentCard(
              title: 'Evento',
              subtitle: 'lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              icon: Icons.event_available,
              onTap: () => Navigator.pushNamed(context, '/agenda'),
              color: Colors.green,
            ),
            _buildContentCard(
              title: 'Evento',
              subtitle: 'lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              icon: Icons.event_available,
              onTap: () => Navigator.pushNamed(context, '/agenda'),
              color: Colors.green,
            ),
            
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}