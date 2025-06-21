import 'package:flutter/material.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(ParoquiaMeninoDeusApp());
}

class ParoquiaMeninoDeusApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Paróquia Menino Deus',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blueGrey,
          foregroundColor: Colors.white,
        ),
      ),
      initialRoute: '/',
      routes: AppRoutes.routes,
    );
  }
}
