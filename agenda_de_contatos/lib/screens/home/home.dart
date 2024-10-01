import 'package:agenda_de_contatos/model/contact.dart';
import 'package:agenda_de_contatos/repository/contact_repository.dart';
import 'package:agenda_de_contatos/screens/home/components/list_item.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ContactRepository.findAll(),
      builder: (_, snapshot) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Meus contatos"),
          ),
          body: buildWidget(snapshot),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/new");
            },
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }

  Widget buildWidget(AsyncSnapshot<List<Contact>> snapshot) {
    List<Contact> contacts = [];
    if (snapshot.connectionState != ConnectionState.done) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    if (!snapshot.hasData || snapshot.data!.isEmpty) {
      return const Center(
        child: Text('Não existem contatos cadastrados!!!'),
      );
    }
    contacts = snapshot.data!;
    return ListView.separated(
      itemCount: contacts.length,
      itemBuilder: (_, index) => ListItem(contact: contacts[index]),
      separatorBuilder: (_, index) => const SizedBox(height: 8),
    );
  }
}
