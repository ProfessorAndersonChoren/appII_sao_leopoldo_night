import 'package:agenda_de_contatos/repository/contact_repository.dart';
import 'package:agenda_de_contatos/screens/edit_contact/edit_contact.dart';
import 'package:agenda_de_contatos/screens/home/home.dart';
import 'package:agenda_de_contatos/screens/new_contact/new_contact.dart';
import 'package:agenda_de_contatos/store/contact_store.dart';
import 'package:agenda_de_contatos/store/favorite_store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider<ContactsStore>(
          create: (_) => ContactsStore(),
        ),
        Provider(
          create: (_) => ContactRepository(),
        ),
        Provider(
          create: (_) => FavoriteStore(),
        ),
      ],
      child: MaterialApp(
        title: "Agenda de contatos",
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: {
          "/": (context) => const Home(),
          "/new": (context) => NewContact(),
          "/edit": (context) => EditContact(),
          "/details": (context) => EditContact(),
        },
      ),
    ),
  );
}
