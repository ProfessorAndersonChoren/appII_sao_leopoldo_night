import 'package:flutter/material.dart';
import 'package:organizeme/screens/tasks/tasks_page.dart';
import 'theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MaterialTheme(Theme.of(context).textTheme).light(),
      darkTheme: MaterialTheme(Theme.of(context).textTheme).dark(),
      initialRoute: '/tasks',
      routes: {
        '/tasks': (_) => TasksPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
