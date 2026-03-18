import 'package:flutter/material.dart';

class PaginaEmpleados extends StatelessWidget {
  const PaginaEmpleados({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Staff Aeroportuario'), backgroundColor: Colors.blue[700]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://raw.githubusercontent.com/bryankidkok/Act-3-Drawer-Rutas-Nombradas-en-main/refs/heads/main/empleados.jpg', // Tu link de GitHub
              width: 200, height: 200, fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            const Text('Directorio de Personal', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}