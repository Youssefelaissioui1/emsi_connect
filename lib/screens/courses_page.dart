import 'package:flutter/material.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> modules = [
      {'nom': 'Flutter', 'enseignant': 'Mme Aouraghe', 'heures': 32},
      {'nom': 'Réseaux', 'enseignant': 'M. Exemple', 'heures': 24},
      {'nom': 'Bases de données', 'enseignant': 'Mme Sara', 'heures': 30},
      {
        'nom': 'Intelligence artificielle',
        'enseignant': 'M. Karim',
        'heures': 40,
      },
      {'nom': 'Cybersécurité', 'enseignant': 'Mme Lina', 'heures': 35},
      {'nom': 'Développement Web', 'enseignant': 'M. Ahmed', 'heures': 36},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Liste des modules')),

      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Mes modules de formation',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),

          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: modules.length,

              itemBuilder: (context, index) {
                return Card(
                  elevation: 2,
                  margin: const EdgeInsets.only(bottom: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: ListTile(
                    // leading: const Icon(Icons.menu_book),
                    leading: CircleAvatar(child: Text('${index + 1}')),
                    // title: Text(modules[index]),
                    title: Text(
                      modules[index]['nom'],
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    subtitle: Text(
                      'Enseignant : ${modules[index]['enseignant']}\n'
                      'Durée : ${modules[index]['heures']} heures',
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                    isThreeLine: true,
                    // trailing: const Icon(Icons.arrow_forward_ios),
                    // onTap(){
                    //   debugPrint('Module sélectionné : ${modules[index]}');
                    // }
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Module sélectionné : ${modules[index]['nom']}',
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
