import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:url_launcher/url_launcher.dart';

class CvScreen extends StatelessWidget {
  const CvScreen({super.key});

  final String cvUrl = 'assets/documents/CV_Jonathan.pdf';

  void _downloadCV() async {
    final Uri url = Uri.parse('assets/$cvUrl');

    try {
      await launchUrl(url, webOnlyWindowName: '_blank');
    } catch (e) {
      debugPrint('Error al abrir CV: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Mi Curriculum Vitae',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              ElevatedButton.icon(
                onPressed: _downloadCV,
                icon: const Icon(Icons.download),
                label: const Text('Descargar CV'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 15,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: SfPdfViewer.asset(
                cvUrl,
                canShowScrollHead: false,
                canShowScrollStatus: false,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
