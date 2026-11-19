
```markdown
# EMSI Connect

EMSI Connect est une application universitaire développée avec **Flutter** et **Dart**. Elle permet aux étudiants de consulter leurs informations personnelles, leurs cours et d'accéder à des fonctionnalités multimédia.

## Fonctionnalités

- Connexion avec validation des champs
- Inscription avec confirmation du mot de passe
- Menu latéral de navigation
- Page d'accueil
- Consultation des modules de formation
- Affichage du profil étudiant
- Page de détails étudiant
- Paramètres pour les notifications et le mode compact
- Sélection d'une image depuis la galerie ou la caméra
- Enregistrement et lecture d'une question vocale
- Déconnexion vers la page de connexion

## Technologies utilisées

- Flutter
- Dart
- Material Design 3
- image_picker
- permission_handler
- record
- audioplayers
- cupertino_icons
- flutter_lints

## Prérequis

- Flutter SDK compatible avec Dart `^3.13.5`
- Android Studio ou Visual Studio Code
- Un émulateur Android ou un appareil physique
- Les autorisations nécessaires pour la caméra et le microphone

## Installation

```bash
git clone https://github.com/Youssefelaissioui1/emsi_connect.git
cd emsi_connect
flutter pub get
flutter run
```

Lancer l'application sur Windows :

```bash
flutter run -d windows
```

Lancer l'application sur Android :

```bash
flutter run -d android
```

## Structure du projet

```text
lib/
├── main.dart
└── screens/
    ├── login_page.dart
    ├── register_page.dart
    ├── home_page.dart
    ├── courses_page.dart
    ├── profile_page.dart
    ├── student_details_page.dart
    ├── settings_page.dart
    └── multimedia_page.dart
assets/
└── images/
test/
└── widget_test.dart
```

## Parcours de l'application

1. L'application démarre sur la page de connexion.
2. Un email contenant `@` et un mot de passe d'au moins huit caractères sont requis.
3. Après validation, l'utilisateur est redirigé vers la page d'accueil.
4. Le menu latéral permet d'accéder au profil, aux cours, aux paramètres et au multimédia.
5. La déconnexion ramène l'utilisateur à la page de connexion.

## Pages principales

- **Connexion** : validation locale du formulaire.
- **Inscription** : validation locale du formulaire sans création réelle de compte.
- **Accueil** : présentation de l'application et cartes de navigation.
- **Cours** : liste des modules, enseignants et durées.
- **Profil** : informations personnelles et académiques.
- **Détails** : réception des données depuis la page du profil.
- **Paramètres** : activation des notifications et du mode compact.
- **Multimédia** : prise de photo, sélection d'image et enregistrement vocal.

## Dépendances

### Dépendances principales

```yaml
cupertino_icons: ^1.0.8
permission_handler: ^13.0.2
audioplayers: ^6.8.1
record: ^7.2.0
image_picker: ^1.2.4
```

### Dépendances de développement

```yaml
flutter_test:
  sdk: flutter
flutter_lints: ^6.0.0
```

## Permissions Android

Le projet demande l'autorisation suivante :

```xml
<uses-permission android:name="android.permission.RECORD_AUDIO" />
```

Cette permission permet d'utiliser le microphone pour enregistrer des questions vocales.

## Commandes utiles

Analyser le code :

```bash
flutter analyze
```

Exécuter les tests :

```bash
flutter test
```

Nettoyer le projet :

```bash
flutter clean
flutter pub get
```

Construire une application Android :

```bash
flutter build apk
```

Construire une application Windows :

```bash
flutter build windows
```

## Limites actuelles

- Les données sont simulées localement.
- Aucun backend ou authentification réelle n'est utilisé.
- Le compte créé depuis la page d'inscription n'est pas enregistré.
- Les paramètres ne sont pas persistés après redémarrage.
- Le bouton **Modifier** affiche uniquement un message de débogage.
- Le test fourni est un test par défaut et doit être adapté à l'application.

## Améliorations possibles

- Ajouter Firebase ou une API REST
- Implémenter l'inscription et la connexion
- Persister les paramètres avec SharedPreferences
- Ajouter une gestion complète du profil
- Ajouter une base de données pour les cours
- Mettre à jour les tests automatisés
- Ajouter les tests unitaires et d'intégration

## Auteur

Youssef Elaissioui

## Licence

Projet pédagogique EMSI.
```
