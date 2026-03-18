import 'package:flutter/material.dart';

class PaginaEscalas extends StatelessWidget {
  const PaginaEscalas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Escalas Técnicas'), backgroundColor: Colors.blue[800]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://raw.githubusercontent.com/bryankidkok/Act-3-Drawer-Rutas-Nombradas-en-main/refs/heads/main/escala.jpg', // Tu link de GitHub
              width: 200, height: 200, fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            const Text('Información de Conexiones', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}