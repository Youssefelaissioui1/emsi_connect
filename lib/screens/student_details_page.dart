import 'package:flutter/material.dart';

class StudentDetailsPage extends StatelessWidget {
  // Les données reçues depuis la page précédente
  final String studentName;
  final String program;

  const StudentDetailsPage({
    super.key,
    required this.studentName,
    required this.program,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Détails de l’étudiant'),
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.person, size: 70),
                const SizedBox(height: 16),

                Text(
                  studentName,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  'Formation : $program',
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}