import 'package:flutter/material.dart';
import 'package:portafolio_flutter/features/home/home_section.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HomeSection(),
            Container(
              height: 600,
              color: Colors.green[100],
              child: const Center(
                child: Text('2. Proyectos', style: TextStyle(fontSize: 24)),
              ),
            ),
            Container(
              height: 600,
              color: Colors.orange[100],
              child: const Center(
                child: Text('3. Sobre Mí', style: TextStyle(fontSize: 24)),
              ),
            ),
            Container(
              height: 400,
              color: Colors.red[100],
              child: const Center(
                child: Text('4. Descargar CV', style: TextStyle(fontSize: 24)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
