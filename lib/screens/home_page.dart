import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('EMSI Connect'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, size: 30),
            onPressed: () {
              debugPrint('Notifications consultées');
            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/emsi1.webp',
                height: 160,
                width: double.infinity,
                fit: BoxFit.cover,
              ),

              const SizedBox(height: 24),

              const Text(
                'Bienvenue sur EMSI Connect',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 16),

              const Text(
                'Votre espace universitaire pour accéder à vos cours, '
                'votre planning et vos informations personnelles.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),

              const SizedBox(height: 24),

              // Première ligne : deux rubriques
              Row(
                children: [
                  Expanded(
                    child: _buildCard(
                      icon: Icons.menu_book,
                      title: 'Mes cours',
                    ),
                  ),
                  const SizedBox(width: 12),
                  Flexible(
                          fit: FlexFit.loose,
                    child: _buildCard(
                      icon: Icons.calendar_month,
                      title: 'Planning',
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 12),

              // Deuxième ligne : deux rubriques
              Row(
                children: [
                  Expanded(
                    child: _buildCard(icon: Icons.person, title: 'Mon profil'),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildCard(
                      icon: Icons.task_alt,
                      title: 'Mes tâches',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('Fonctionnalité bientôt disponible');
        },
        tooltip: 'Ajouter',
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildCard({required IconData icon, required String title}) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.blue.shade100),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: Colors.blue),
          const SizedBox(height: 8),
          Text(title, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
