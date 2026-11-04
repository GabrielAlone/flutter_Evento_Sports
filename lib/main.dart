import 'package:flutter/material.dart';
import 'package:flutter_tela/tela_inicial.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Define qual será a primeira tela aberta
      // Neste caso: TelaInicial()
      home: TelaInicial(),
    );
  }
}
