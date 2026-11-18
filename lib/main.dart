import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const ReporteUrbanoApp());
}

class ReporteUrbanoApp extends StatelessWidget {
  const ReporteUrbanoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Oculta la etiqueta de "DEBUG"
      title: 'Reporte Urbano',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(), // Llama a la pantalla que acabas de crear
    );
  }
}