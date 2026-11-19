import 'package:flutter/material.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  bool _showPassword = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Nous allons remettre ici notre Scaffold

    return Scaffold(
      appBar: AppBar(title: const Text('Connexion')),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Form(
          key: _formKey,

          child: Column(
            children: [
              // Champ Email
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,

                decoration: const InputDecoration(
                  labelText: 'Adresse email',
                  hintText: 'exemple@emsi.ma',
                  prefixIcon: Icon(Icons.email_outlined),
                  border: OutlineInputBorder(),
                ),

                validator: (value) {
                  final email = (value ?? '').trim();

                  if (email.isEmpty) {
                    return 'Email obligatoire';
                  }

                  if (!email.contains('@')) {
                    return 'Email invalide';
                  }

                  return null;
                },
              ),

              const SizedBox(height: 16),

              // Champ Mot de passe
              TextFormField(
                controller: _passwordController,

                obscureText: !_showPassword,

                decoration: InputDecoration(
                  labelText: 'Mot de passe',
                  prefixIcon: const Icon(Icons.lock_outline),

                  suffixIcon: IconButton(
                    icon: Icon(
                      _showPassword ? Icons.visibility_off : Icons.visibility,
                    ),

                    onPressed: () {
                      setState(() {
                        _showPassword = !_showPassword;
                      });
                    },
                  ),

                  border: const OutlineInputBorder(),
                ),

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Mot de passe obligatoire';
                  }

                  if (value.length < 8) {
                    return 'Au moins 8 caractères';
                  }

                  return null;
                },
              ),

              const SizedBox(height: 24),

              // Bouton de validation
              // ElevatedButton(
              //   onPressed: () {
              //     if (_formKey.currentState!.validate()) {
              //       ScaffoldMessenger.of(context).showSnackBar(
              //         const SnackBar(
              //           content: Text('Saisie valide (test local)'),
              //         ),
              //       );
              //     }
              //   },

              //   child: const Text('Vérifier la saisie'),
              // ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  }
                },
                child: const Text('Se connecter'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
