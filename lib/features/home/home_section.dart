import 'package:flutter/material.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      constraints: BoxConstraints(minHeight: size.height * 0.8),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 80,
            backgroundColor: Colors.blueGrey,
            child: Icon(Icons.person, size: 80, color: Colors.white),
          ),
          const SizedBox(height: 30),

          const Text(
            'Hola, soy Jonathan Rocha Contreras',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              letterSpacing: -1.0,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),

          Text(
            'Desarrollador Backend)',
            style: TextStyle(
              fontSize: 22,
              color: Colors.grey[700],
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),

          ElevatedButton(
            onPressed: () {
              print("Navegar a proyectos");
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
              backgroundColor: Theme.of(context).colorScheme.primary,
              foregroundColor: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text(
              'Ver mis proyectos',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
