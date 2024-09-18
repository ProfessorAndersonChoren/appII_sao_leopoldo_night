import 'package:flutter/material.dart';
import 'package:login_and_register/screens/login/login_page.dart';
import 'package:login_and_register/screens/register/register_page.dart';

import 'theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: MaterialTheme(Theme.of(context).textTheme).dark(),
      themeMode: ThemeMode.dark, // Forçar o tema escuro
      initialRoute: '/login',
      routes: {
        '/login': (_) => LoginPage(),
        '/register': (_) => RegisterPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
