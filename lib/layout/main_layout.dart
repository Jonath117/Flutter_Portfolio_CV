import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainLayout extends StatelessWidget {
  final Widget child;

  const MainLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
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
          _buildNavTextButton(context, 'Inicio', '/'),
          const SizedBox(width: 20),
          _buildNavTextButton(context, 'Artículos', '/articles'),
          const SizedBox(width: 20),
          _buildNavTextButton(context, 'Proyectos', '/projects'),
          const SizedBox(width: 20),
          _buildNavTextButton(context, 'CV', '/cv'),
          const SizedBox(width: 50),
        ],
      ),

      body: Column(
        children: [
          Expanded(child: child),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 20),
            decoration: const BoxDecoration(
              color: Colors.white,
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
                    _buildFooterLink(Icons.work, 'LinkedIn'),
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

  Widget _buildNavTextButton(BuildContext context, String title, String route) {
    return TextButton(
      onPressed: () => context.go(route),
      style: TextButton.styleFrom(
        foregroundColor: Colors.black87,
        textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      ),
      child: Text(title),
    );
  }

  Widget _buildFooterLink(IconData icon, String text) {
    return InkWell(
      onTap: () {},
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
