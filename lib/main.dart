import 'package:flutter/material.dart';
import 'routes/app_routes.dart';
import 'core/colors.dart';

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
        scaffoldBackgroundColor: kBackgroundColor,
      ),
      initialRoute: '/',
      routes: AppRoutes.routes,
    );
  }
}
