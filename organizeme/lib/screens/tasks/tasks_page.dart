import 'package:flutter/material.dart';
import 'package:organizeme/screens/shared/app_drawer.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OrganizeMe'),
      ),
      drawer: const AppDrawer(),
      body: const Center(
        child: Text(
          'TasksPage is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
