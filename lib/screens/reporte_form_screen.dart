import 'package:flutter/material.dart';

class ReporteFormScreen extends StatefulWidget {
  const ReporteFormScreen({super.key});

  @override
  State<ReporteFormScreen> createState() => _ReporteFormScreenState();
}

class _ReporteFormScreenState extends State<ReporteFormScreen> {
  // Controlador para leer lo que el usuario escribe
  final TextEditingController _tituloController = TextEditingController();

  @override
  void dispose() {
    _tituloController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nuevo Reporte'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Describe el problema',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            // Campo de texto para el reporte
            TextField(
              controller: _tituloController,
              decoration: const InputDecoration(
                labelText: 'Ej. Bache profundo en Av. Universidad',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.edit),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Por ahora solo mostraremos en consola lo que se escribió
                print("Reporte guardado: ${_tituloController.text}");
                
                // Navigator.pop regresa a la pantalla anterior
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 15),
                backgroundColor: Colors.green,
              ),
              child: const Text(
                'Guardar Reporte',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}