import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/home/screens/home_screen.dart';
import 'features/agenda/screens/agenda_screen.dart';
import 'features/liturgia/screens/liturgia_screen.dart';
import 'features/mais_opcoes/screens/mais_opcoes_screen.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _selectedIndex = 0;

  static final List<Widget> _screens = <Widget>[
    HomeScreen(),
    LiturgiaScreen(),
    AgendaScreen(),
    MaisOpcoesScreen(),
  ];

  void _onItemTapped(int index) {
    if(_selectedIndex != index) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack( 
        index: _selectedIndex,
        children: _screens,
      ), 
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        backgroundColor: Colors.white,
        elevation: 0,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF1565C0), 
        unselectedItemColor: Colors.blueGrey[400],
        selectedLabelStyle: GoogleFonts.openSans(
          fontWeight: FontWeight.w600,
          fontSize: 12,
        ),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_outlined),
            label: 'Liturgia',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_available_outlined),
            label: 'Agenda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'Mais opções',
          ),
        ],
      ),
    );
  }
}