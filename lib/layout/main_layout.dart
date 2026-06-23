import 'package:flutter/material.dart';
import '../features/home/home_section.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        // Línea negra divisora inferior
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(color: Colors.black, height: 1.0),
        ),
        title: const Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text(
            'Mi Portafolio',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          _buildNavTextButton('Inicio'),
          const SizedBox(width: 20),
          _buildNavTextButton('Artículos'),
          const SizedBox(width: 20),
          _buildNavTextButton('Proyectos'),
          const SizedBox(width: 20),
          _buildNavTextButton('CV'),
          const SizedBox(width: 50),
        ],
      ),

      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 750,
                    color: Colors.grey[50],
                    child: const Center(child: HomeSection()),
                  ),
                ],
              ),
            ),
          ),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 20),
            decoration: const BoxDecoration(
              color: Colors.white,
              // Línea negra divisora superior
              border: Border(top: BorderSide(color: Colors.black, width: 1.0)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  '© 2026 Jonathan Rocha. All rights reserved.',
                  style: TextStyle(color: Colors.black87),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildFooterLink(
                      Icons.work,
                      'LinkedIn',
                    ), // Puedes cambiar el Icon por Image.asset si usas tus PNG/SVG
                    const SizedBox(width: 30),
                    _buildFooterLink(Icons.code, 'GitHub'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavTextButton(String title) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        foregroundColor: Colors.black87,
        textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      ),
      child: Text(title),
    );
  }

  Widget _buildFooterLink(IconData icon, String text) {
    return InkWell(
      onTap: () {
        // Lógica para abrir url
      },
      child: Row(
        children: [
          Icon(icon, size: 20, color: Colors.black87),
          const SizedBox(width: 8),
          Text(
            text,
            style: const TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
