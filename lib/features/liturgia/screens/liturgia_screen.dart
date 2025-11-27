import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import '../../../core/colors.dart';

class LiturgiaScreen extends StatefulWidget {
  @override
  _LiturgiaScreenState createState() => _LiturgiaScreenState();
}

class _LiturgiaScreenState extends State<LiturgiaScreen> {
  Map<String, dynamic> liturgiaData = {};
  bool isLoading = true;
  String errorMessage = '';
  bool isOffline = false;

  @override
  void initState() {
    super.initState();
    initializeDateFormatting('pt_BR', null).then((_) {
      _fetchLiturgiaData();
    });
  }

  Future<bool> _checkInternetConnection() async {
    final connectivityResult = await Connectivity().checkConnectivity();
    return connectivityResult != ConnectivityResult.none;
  }

  Future<void> _fetchLiturgiaData() async {
    setState(() {
      isLoading = true;
      errorMessage = '';
    });

    if (!await _checkInternetConnection()) {
      setState(() {
        errorMessage = 'Sem conexão com a internet';
        isLoading = false;
        isOffline = true;
      });
      return;
    }

    try {
      final hoje = DateFormat('yyyy-MM-dd').format(DateTime.now());
      final url = Uri.parse('https://api-liturgia-diaria.vercel.app/cn?date=$hoje');
      final response = await http.get(url).timeout(const Duration(seconds: 10));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final todayData = data['today'];

        setState(() {
          liturgiaData = {
            'data': DateFormat('EEEE, d \'de\' MMMM \'de\' y', 'pt_BR')
                .format(DateTime.now()),
            'primeiraLeitura': _extractHtml(todayData['readings']['first_reading']['all_html']),
            'salmo': _extractHtml(todayData['readings']['psalm']['all_html']),
            'evangelho': _extractHtml(todayData['readings']['gospel']['all_html']),
            'cor': todayData['color'] ?? 'verde',
          };
          isLoading = false;
          isOffline = false;
        });
      } else {
        throw Exception('Status ${response.statusCode}');
      }
    } catch (e) {
      setState(() {
        errorMessage = 'Não foi possível carregar a liturgia diária';
        isLoading = false;
      });
    }
  }

  String _extractHtml(String htmlText) {
    final regex = RegExp(r'<[^>]*>', multiLine: true, caseSensitive: true);
    return htmlText.replaceAll(regex, '').trim();
  }

  Color _getCorLiturgica() {
    switch (liturgiaData['cor']?.toLowerCase()) {
      case 'branco':
        return Colors.white;
      case 'vermelho':
        return Colors.red;
      case 'verde':
        return Colors.green;
      case 'roxo':
        return Colors.purple;
      case 'rosa':
        return Colors.pink;
      default:
        return Colors.blue;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: kAppBarGradient,
          ),
        ),
        title: Text(
          'Liturgia',
          style: GoogleFonts.robotoSlab(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: _fetchLiturgiaData,
          ),
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    if (isLoading) return Center(child: CircularProgressIndicator());

    if (errorMessage.isNotEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(errorMessage, style: GoogleFonts.openSans(fontSize: 16)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _fetchLiturgiaData,
              child: Text('Tentar novamente'),
              style: ElevatedButton.styleFrom(
                backgroundColor: kPrimaryColor,
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ),
      );
    }

    return SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: _getCorLiturgica().withOpacity(0.2),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: _getCorLiturgica()),
            ),
            child: Text(
              liturgiaData['data'],
              style: GoogleFonts.openSans(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: _getCorLiturgica(),
              ),
            ),
          ),
          SizedBox(height: 16),
          _buildSection('Primeira leitura', liturgiaData['primeiraLeitura']),
          _buildSection('Salmo', liturgiaData['salmo']),
          _buildSection('Evangelho', liturgiaData['evangelho']),
        ],
      ),
    );
  }

  Widget _buildSection(String title, String? content) {
    if (content == null || content.isEmpty) return SizedBox();
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.openSans(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: kPrimaryColor,
            ),
          ),
          SizedBox(height: 8),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: kCardBackgroundColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(content, style: GoogleFonts.openSans(fontSize: 16)),
          ),
        ],
      ),
    );
  }
}
