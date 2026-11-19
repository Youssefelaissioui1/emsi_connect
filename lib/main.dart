//import 'package:emsi_connect/screens/profile_page.dart';
//import 'package:emsi_connect/screens/register_page.dart';
import 'package:flutter/material.dart';

//import 'package:emsi_connect/screens/courses_page.dart';
//import 'screens/home_page.dart';

//import 'screens/profile_page.dart';
import 'package:emsi_connect/screens/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EMSI Connect',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 6, 243, 73),
        ),
      ),
     // home: const HomePage(),
      //  home: const ProfilePage(),
      //home: const CoursesPage(),
       home:  LoginPage(),
      //  home:const RegisterPage(),
    );
  }
}
