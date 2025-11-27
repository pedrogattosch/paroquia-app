import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/colors.dart';

class OracoesScreen extends StatelessWidget {
  final List<Map<String, String>> oracoes = [
    {
      'titulo': 'Pai Nosso',
      'texto': '''Pai nosso que estais no céu,
santificado seja o vosso nome;
venha a nós o vosso reino;
seja feita a vossa vontade,
assim na terra como no céu.

O pão nosso de cada dia nos dai hoje;
perdoai-nos as nossas ofensas,
assim como nós perdoamos
a quem nos tem ofendido;
e não nos deixeis cair em tentação,
mas livrai-nos do mal. Amém.''',
    },
    {
      'titulo': 'Ave Maria',
      'texto': '''Ave Maria, cheia de graça,
o Senhor é convosco,
bendita sois vós entre as mulheres,
e bendito é o fruto do vosso ventre, Jesus.

Santa Maria, Mãe de Deus,
rogai por nós pecadores,
agora e na hora da nossa morte. Amém.''',
    },
    {
      'titulo': 'Creio',
      'texto': '''Creio em Deus Pai todo-poderoso,
criador do céu e da terra.
E em Jesus Cristo, seu único Filho, nosso Senhor,
que foi concebido pelo poder do Espírito Santo;
nasceu da Virgem Maria;
padeceu sob Pôncio Pilatos,
foi crucificado, morto e sepultado.

Desceu à mansão dos mortos;
ressuscitou ao terceiro dia;
subiu aos céus,
onde está sentado à direita de Deus Pai todo-poderoso,
de onde há de vir a julgar os vivos e os mortos.
Creio no Espírito Santo,
na Santa Igreja Católica,
na comunhão dos santos,
na remissão dos pecados,
na ressurreição da carne,
na vida eterna. Amém.''',
    },
    {
      'titulo': 'Glória ao Pai',
      'texto': '''Glória ao Pai, ao Filho e ao Espírito Santo,
como era no princípio, agora e sempre. Amém.''',
    },
    {
      'titulo': 'Ó meu Jesus',
      'texto': '''Ó meu Jesus, perdoai-nos, 
livrai-nos do fogo do inferno,
levai as almas todas para o céu
e socorrei principalmente aquelas que 
mais precisarem da vossa misericórdia. Amém.''',
    },
    {
      'titulo': 'Salve Rainha',
      'texto': '''Salve, Rainha
Mãe de misericórdia,
vida, doçura, esperança nossa, salve!
A vós brandamos os degredados filhos de Eva.
A vós suspiramos, gemendo e chorando
neste vale de lágrima.
Eia, pois, advogada nossa,
esses vossos olhos misericordiosos a nós volvei,
e depois deste desterro mostrai-nos Jesus,
bendito fruto do vosso ventre.
Ó clemente, ó piedosa, ó doce sempre Virgem Maria.
V.: Rogai por nós santa Mãe de Deus.
R.: Para que sejamos dignos das promessas de Cristo.''',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: kAppBarGradient,
          ),
        ),
        title: Text(
          'Orações',
          style: GoogleFonts.robotoSlab(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: oracoes.length,
        itemBuilder: (context, index) {
          final oracao = oracoes[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            decoration: BoxDecoration(
              color: kCardBackgroundColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20, vertical: 16),
              title: Text(
                oracao['titulo']!,
                style: GoogleFonts.openSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: kCardTitleColor,
                ),
              ),
              trailing: Icon(Icons.chevron_right, color: kCardTextColor),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => OracaoDetalheScreen(
                      titulo: oracao['titulo']!,
                      texto: oracao['texto']!,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class OracaoDetalheScreen extends StatelessWidget {
  final String titulo;
  final String texto;

  const OracaoDetalheScreen({
    Key? key,
    required this.titulo,
    required this.texto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: kAppBarGradient,
          ),
        ),
        title: Text(
          titulo,
          style: GoogleFonts.robotoSlab(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Text(
          texto,
          style: GoogleFonts.openSans(
            fontSize: 16,
            height: 1.8,
            color: kCardTextColor,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}