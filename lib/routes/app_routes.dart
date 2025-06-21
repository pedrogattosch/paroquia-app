import '../features/home/screens/home_screen.dart';
import '../features/informacoes/screens/informacoes_screen.dart';
import '../features/agenda/screens/agenda_screen.dart';
import '../features/noticias/screens/noticias_screen.dart';
import '../features/liturgia/screens/liturgia_screen.dart';
import '../features/oracoes/screens/oracoes_screen.dart';
import '../features/pastorais/screens/pastorais_screen.dart';
import '../features/doacoes/screens/doacoes_screen.dart';

class AppRoutes {
  static final routes = {
    '/': (context) => HomeScreen(),
    '/informacoes': (context) => InformacoesScreen(),
    '/agenda': (context) => AgendaScreen(),
    '/noticias': (context) => NoticiasScreen(),
    '/liturgia': (context) => LiturgiaScreen(),
    '/oracoes': (context) => OracoesScreen(),
    '/pastorais': (context) => PastoraisScreen(),
    '/doacoes': (context) => DoacoesScreen(),
  };
}
