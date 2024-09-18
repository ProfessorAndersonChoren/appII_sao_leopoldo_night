import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RegisterPage'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'RegisterPage is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
