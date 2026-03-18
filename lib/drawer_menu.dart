import 'package:flutter/material.dart';

class MiDrawer extends StatelessWidget {
  const MiDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Importante: Eliminar cualquier padding del ListView.
        padding: EdgeInsets.zero,
        children: [
          // 1. ENCABEZADO: Imagen avatar, nombre empresa, dirección, teléfono y correo
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFF0D47A1), // Azul Marino (Aeropuerto)
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              // Imagen de avatar desde la red (Logo del negocio)
              backgroundImage: NetworkImage('https://raw.githubusercontent.com/bryankidkok/Act-3-Drawer-Rutas-Nombradas-en-main/refs/heads/main/aeropuerto.jpg'),
            ),
            accountName: Text(
              'Aeropuerto SkyBlue Internacional',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            accountEmail: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Av. Aviación 101, CDMX'),
                Text('Tel: 800-SKY-BLUE'),
                Text('contacto@skyblue-airport.com'),
              ],
            ),
          ),

          // 2. LISTTILE: Icono, Texto y Acción para abrir cada página
          _crearItem(
            context, 
            icono: Icons.flight_takeoff, 
            texto: 'Vuelos', 
            ruta: '/vuelos'
          ),
          
          _crearItem(
            context, 
            icono: Icons.connecting_airports, 
            texto: 'Escalas', 
            ruta: '/escalas'
          ),
          
          _crearItem(
            context, 
            icono: Icons.badge_outlined, 
            texto: 'Empleados', 
            ruta: '/empleados'
          ),

          const Divider(), // Divisor visual

          _crearItem(
            context, 
            icono: Icons.settings, 
            texto: 'Configuración', 
            ruta: '/' // O una 4ta ruta si la creas
          ),
        ],
      ),
    );
  }

  /// Método para crear cada opción del menú de forma limpia
  Widget _crearItem(BuildContext context, {
    required IconData icono, 
    required String texto, 
    required String ruta
  }) {
    return ListTile(
      leading: Icon(icono, color: const Color(0xFF1976D2)), // Azul intermedio
      title: Text(
        texto,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
      onTap: () {
        // 1. Cierra el drawer automáticamente
        Navigator.pop(context);
        // 2. Navega a la ruta nombrada definida en main.dart
        Navigator.pushNamed(context, ruta);
      },
    );
  }
}