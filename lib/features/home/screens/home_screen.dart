import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<_MenuItem> menuItems = [
    _MenuItem(icon: Icons.info, label: 'Informações', route: '/informacoes'),
    _MenuItem(icon: Icons.event, label: 'Agenda', route: '/agenda'),
    _MenuItem(icon: Icons.article, label: 'Notícias', route: '/noticias'),
    _MenuItem(icon: Icons.menu_book, label: 'Liturgia', route: '/liturgia'),
    _MenuItem(icon: Icons.favorite, label: 'Orações', route: '/oracoes'),
    _MenuItem(icon: Icons.groups, label: 'Pastorais', route: '/pastorais'),
    _MenuItem(icon: Icons.volunteer_activism, label: 'Doações', route: '/doacoes'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paróquia Menino Deus'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Text(
            'Bem-vindo!',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey[700],
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Escolha uma das opções abaixo:',
            style: TextStyle(fontSize: 16, color: Colors.black54),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: menuItems.map((item) {
                  return GestureDetector(
                    onTap: () => Navigator.pushNamed(context, item.route),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      elevation: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(item.icon, size: 40, color: Colors.blueGrey),
                          const SizedBox(height: 10),
                          Text(
                            item.label,
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _MenuItem {
  final IconData icon;
  final String label;
  final String route;

  _MenuItem({required this.icon, required this.label, required this.route});
}
