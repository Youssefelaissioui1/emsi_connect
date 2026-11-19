import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  // Valeurs initiales des paramètres
  bool _notificationsEnabled = true;
  bool _compactMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paramètres'),
      ),
      body: ListView(
        children: [
          SwitchListTile(
            title: const Text('Notifications'),
            subtitle: const Text('Activer ou désactiver les notifications'),
            value: _notificationsEnabled,
            onChanged: (bool value) {
              setState(() {
                _notificationsEnabled = value;
              });
            },
          ),

          const Divider(),

          SwitchListTile(
            title: const Text('Mode compact'),
            subtitle: const Text('Réduire les espacements'),
            value: _compactMode,
            onChanged: (bool value) {
              setState(() {
                _compactMode = value;
              });
            },
          ),

          const Divider(),

          // Afficher un message selon l'état des notifications
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text('État des notifications'),
            subtitle: Text(
              _notificationsEnabled
                  ? 'Les notifications sont activées.'
                  : 'Les notifications sont désactivées.',
            ),
          ),
        ],
      ),
    );
  }
}