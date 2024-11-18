import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil', style: TextStyle(fontSize: 24, color: Colors.white)),
        backgroundColor: const Color.fromARGB(225, 197, 15, 15),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nombre: ${args['name']}',
              style: const TextStyle(fontSize: 22),
            ),
            const SizedBox(height: 10),
            Text('Edad: ${args['age']}', style: const TextStyle(fontSize: 22)),
            const SizedBox(height: 10),
            Text('Ocupación: ${args['occupation']}',
                style: const TextStyle(fontSize: 22)),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              icon: const Icon(Icons.home, size: 30),
              label: const Text('Regresar a Inicio',
                  style: TextStyle(fontSize: 18, color: Colors.white)),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(225, 197, 15, 15),
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
            ),
          ],
        ),
      ),
    );
  }
}
