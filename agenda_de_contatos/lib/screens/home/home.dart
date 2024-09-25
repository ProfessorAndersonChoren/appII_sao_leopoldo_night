import 'package:agenda_de_contatos/model/contact.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List<Contact> contacts = [];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meus contatos"),
      ),
      body: const Center(
        child: Text('O contatos vão aqui'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("/new");
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
