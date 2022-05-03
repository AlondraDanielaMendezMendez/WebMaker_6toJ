import 'package:flutter/material.dart';
import 'package:mendez/servicios_webmaker.dart';

void main() {
  runApp(WebMakerApp());
} // Función principal

class WebMakerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'WebMaker',
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: PaginaInicial());
  } // Widgets
} // Clase WebMakerApp | Widget SIN estado
