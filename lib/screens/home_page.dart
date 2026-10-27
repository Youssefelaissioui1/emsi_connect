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

              Row(
                children: [
                  Expanded(
                    child: _buildCard(
                      icon: Icons.menu_book,
                      title: 'Mes cours',
                    ),
                  ),
                  Expanded(
                    child: _buildCard(
                      icon: Icons.calendar_month,
                      title: 'Planning',
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  Expanded(
                    child: _buildCard(icon: Icons.person, title: 'Mon profil'),
                  ),
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
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.green.shade50,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Icon(icon, size: 40, color: Colors.green),
          const SizedBox(height: 8),
          Text(title),
        ],
      ),
    );
  }
}
