
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mon profil'),
        backgroundColor: Colors.blue.shade100,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              // Carte étudiant avec Stack
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.blue.shade200),
                ),
                child: Column(
                  children: [

                    // Bandeau et photo
                    SizedBox(
                      height: 150,
                      child: Stack(
                        children: [
                          Container(
                            height: 110,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade200,
                              borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(16),
                              ),
                            ),
                          ),

                          const Align(
                            alignment: Alignment.bottomCenter,
                            child: CircleAvatar(
                              radius: 45,
                              backgroundImage: AssetImage(
                                'assets/images/profil.jpg',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 12),

                    const Text(
                      'Sara El Amrani',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 6),

                    const Text('Informatique - S5'),

                    const SizedBox(height: 6),

                    const Text('N° étudiant : EMSI2026001'),

                    const SizedBox(height: 12),

                    const Icon(
                      Icons.school,
                      size: 32,
                      color: Colors.blue,
                    ),

                    const SizedBox(height: 16),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Informations personnelles
              const Text(
                'Informations personnelles',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 16),

              _buildInfo(
                icon: Icons.person,
                label: 'Nom',
                value: 'Sara El Amrani',
              ),

              const SizedBox(height: 12),

              _buildInfo(
                icon: Icons.school,
                label: 'Filière',
                value: 'Informatique',
              ),

              const SizedBox(height: 12),

              _buildInfo(
                icon: Icons.layers,
                label: 'Niveau',
                value: 'S5',
              ),

              const SizedBox(height: 12),

              _buildInfo(
                icon: Icons.email,
                label: 'Email',
                value: 'sara@example.com',
              ),

              const SizedBox(height: 12),

              _buildInfo(
                icon: Icons.calendar_today,
                label: 'Année universitaire',
                value: '2026–2027',
              ),

              const SizedBox(height: 24),

              // Deux boutons
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        debugPrint('Modifier le profil');
                      },
                      icon: const Icon(Icons.edit),
                      label: const Text('Modifier'),
                    ),
                  ),

                  const SizedBox(width: 10),

                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        debugPrint('Contacter');
                      },
                      icon: const Icon(Icons.phone),
                      label: const Text('Contacter'),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              // Trois icônes pour tester MainAxisAlignment
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.home, color: Colors.blue),
                  Icon(Icons.person, color: Colors.blue),
                  Icon(Icons.settings, color: Colors.blue),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Fonction réutilisable pour les informations
  Widget _buildInfo({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.blue.shade100,
        ),
      ),

      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.blue,
            size: 24,
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
