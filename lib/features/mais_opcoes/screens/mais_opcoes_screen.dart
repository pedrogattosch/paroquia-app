import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/colors.dart';

class MaisOpcoesScreen extends StatelessWidget {
  final List<_MenuItem> menuItems = [
    _MenuItem(icon: Icons.info_outline, label: 'Informações', route: '/informacoes'),
    _MenuItem(icon: Icons.event_available, label: 'Agenda', route: '/agenda'),
    _MenuItem(icon: Icons.article_outlined, label: 'Notícias', route: '/noticias'),
    _MenuItem(icon: Icons.menu_book_outlined, label: 'Liturgia', route: '/liturgia'),
    _MenuItem(icon: Icons.favorite_border, label: 'Orações', route: '/oracoes'),
    _MenuItem(icon: Icons.groups_outlined, label: 'Pastorais', route: '/pastorais'),
    _MenuItem(icon: Icons.volunteer_activism_outlined, label: 'Doações', route: '/doacoes'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: GridView.builder(
                itemCount: menuItems.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (context, index) {
                  final item = menuItems[index];
                  return InkWell(
                    borderRadius: BorderRadius.circular(16),
                    onTap: () => Navigator.pushNamed(context, item.route),
                    child: Container(
                      decoration: BoxDecoration(
                        color: kCardBackgroundColor,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ShaderMask(
                            shaderCallback: (bounds) =>
                                kAppBarGradient.createShader(bounds),
                            child: Icon(
                              item.icon,
                              size: 36,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            item.label,
                            style: GoogleFonts.openSans(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: kCardTitleColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
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
