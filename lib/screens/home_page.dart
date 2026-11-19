
import 'package:flutter/material.dart';

import 'login_page.dart';
import 'settings_page.dart';
import 'multimedia_page.dart';
import 'courses_page.dart';
import 'profile_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      // ================= APPBAR =================
      // Barre supérieure de l'application.
      appBar: AppBar(
        backgroundColor: colors.inversePrimary,
        title: const Text('EMSI Connect'),

        // Bouton de notification à droite de l'AppBar.
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, size: 30),
            onPressed: () {
              debugPrint('Notifications consultées');
            },
          ),
        ],
      ),

      // ================= DRAWER =================
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // En-tête du menu.
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: colors.primary,
              ),
              accountName: const Text('Étudiant EMSI'),
              accountEmail: const Text('etudiant@emsi.ma'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: colors.onPrimary,
                child: Icon(
                  Icons.person,
                  color: colors.primary,
                ),
              ),
            ),

            // Accueil.
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text('Accueil'),
              selected: true,
              onTap: () {
                Navigator.pop(context);
              },
            ),

            // Mes cours.
            ListTile(
              leading: const Icon(Icons.menu_book_outlined),
              title: const Text('Mes cours'),
              onTap: () {
                Navigator.pop(context);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CoursesPage(),
                  ),
                );
              },
            ),

            // Mon profil.
            ListTile(
              leading: const Icon(Icons.person_outline),
              title: const Text('Mon profil'),
              onTap: () {
                Navigator.pop(context);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfilePage(),
                  ),
                );
              },
            ),

            // Paramètres.
            ListTile(
              leading: const Icon(Icons.settings_outlined),
              title: const Text('Paramètres'),
              onTap: () {
                Navigator.pop(context);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsPage(),
                  ),
                );
              },
            ),

            // Espace multimédia.
            ListTile(
              leading: const Icon(Icons.perm_media),
              title: const Text('Espace multimédia'),
              onTap: () {
                Navigator.pop(context);

                // Ferme le Drawer et ouvre MultimediaPage.
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MultimediaPage(),
                  ),
                );
              },
            ),

            // À propos.
            ListTile(
              leading: const Icon(Icons.info_outline),
              title: const Text('À propos'),
              onTap: () {
                Navigator.pop(context);
                // La navigation vers AboutPage sera ajoutée dans le bonus.
              },
            ),

            const Divider(),

            // Déconnexion.
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Déconnexion'),
              onTap: () {
                Navigator.pop(context);

                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                  (route) => false,
                );
              },
            ),
          ],
        ),
      ),

      // ================= BODY =================
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Image de présentation de l'EMSI.
              Image.asset(
                'assets/images/emsi1.webp',
                height: 160,
                width: double.infinity,
                fit: BoxFit.cover,
              ),

              const SizedBox(height: 24),

              // Titre principal.
              const Text(
                'Bienvenue sur EMSI Connect',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 16),

              // Description de l'application.
              const Text(
                'Votre espace universitaire pour accéder à vos cours, '
                'votre planning et vos informations personnelles.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),

              const SizedBox(height: 24),

              // ================= GRIDVIEW =================
              // GridView.count crée une grille avec 2 colonnes.
              GridView.count(
                crossAxisCount: 2,

                // Espacement horizontal entre les cartes.
                crossAxisSpacing: 12,

                // Espacement vertical entre les cartes.
                mainAxisSpacing: 12,

                // La grille adapte sa hauteur à son contenu.
                shrinkWrap: true,

                // Le défilement est géré par SingleChildScrollView.
                physics: const NeverScrollableScrollPhysics(),

                children: [
                  // ========== CARTE PROFIL ==========
                  _buildCard(
                    context,
                    icon: Icons.person,
                    title: 'Profil',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfilePage(),
                        ),
                      );
                    },
                  ),

                  // ========== CARTE FORMATION ==========
                  _buildCard(
                    context,
                    icon: Icons.school,
                    title: 'Formation',
                  ),

                  // ========== CARTE COURS ==========
                  _buildCard(
                    context,
                    icon: Icons.book,
                    title: 'Cours',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CoursesPage(),
                        ),
                      );
                    },
                  ),

                  // ========== CARTE PARAMÈTRES ==========
                  _buildCard(
                    context,
                    icon: Icons.settings,
                    title: 'Paramètres',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      // ================= FLOATING ACTION BUTTON =================
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('Fonctionnalité bientôt disponible');
        },
        tooltip: 'Ajouter',
        child: const Icon(Icons.add),
      ),
    );
  }

  // ===================================================
  // FONCTION PERSONNALISÉE : CONSTRUCTION DES CARTES
  // ===================================================

  Widget _buildCard(
    BuildContext context, {
    required IconData icon,
    required String title,

    // Callback facultatif pour rendre la carte cliquable.
    // VoidCallback = fonction sans paramètre et sans retour.
    // ? = ce paramètre peut être null.
    VoidCallback? onTap,
  }) {
    // InkWell permet de détecter le clic sur la carte.
    return InkWell(
      onTap: onTap,

      // Arrondir l'effet visuel du clic.
      borderRadius: BorderRadius.circular(12),

      child: Container(
        padding: const EdgeInsets.all(16),

        // Décoration de la carte.
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Theme.of(context).colorScheme.outline,
          ),
        ),

        // Contenu de la carte : icône + titre.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 40,
              color: Theme.of(context).colorScheme.primary,
            ),

            const SizedBox(height: 8),

            Text(
              title,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
