import 'package:flutter/material.dart';

class PaginaVuelos extends StatelessWidget {
  const PaginaVuelos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Vuelos Disponibles'), backgroundColor: Colors.blue[900]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://raw.githubusercontent.com/bryankidkok/Act-3-Drawer-Rutas-Nombradas-en-main/refs/heads/main/vuelos.jpg', // Tu link de GitHub
              width: 200, height: 200, fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            const Text('Panel de Vuelos Internacionales', style: TextStyle(fontSize: 18, color: Colors.blue)),
          ],
        ),
      ),
    );
  }
}