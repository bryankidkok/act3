import 'package:flutter/material.dart';
import 'drawer_menu.dart';
import 'paginas/pagina_vuelos.dart';
import 'paginas/pagina_escalas.dart';
import 'paginas/pagina_empleados.dart';

void main() => runApp(const AeropuertoApp());

class AeropuertoApp extends StatelessWidget {
  const AeropuertoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aeropuerto Pro',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaInicio(),
        '/vuelos': (context) => const PaginaVuelos(),
        '/escalas': (context) => const PaginaEscalas(),
        '/empleados': (context) => const PaginaEmpleados(),
      },
    );
  }
}

class PantallaInicio extends StatelessWidget {
  const PantallaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terminal Principal'),
        backgroundColor: const Color(0xFF0D47A1),
      ),
      drawer: const MiDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // IMAGEN DE INICIO 200x200
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'https://raw.githubusercontent.com/bryankidkok/Act-3-Drawer-Rutas-Nombradas-en-main/refs/heads/main/v.jpg',
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => 
                    const Icon(Icons.airplane_ticket, size: 100, color: Colors.blue),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Bienvenido al Sistema del Aeropuerto',
              style: TextStyle(
                fontSize: 20, 
                fontWeight: FontWeight.bold, 
                color: Color(0xFF0D47A1)
              ),
            ),
            const Text('Seleccione una opción en el menú lateral'),
          ],
        ),
      ),
    );
  }
}