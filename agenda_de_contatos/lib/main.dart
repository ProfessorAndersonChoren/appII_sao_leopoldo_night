import 'package:agenda_de_contatos/screens/edit_contact/edit_contact.dart';
import 'package:agenda_de_contatos/screens/home/home.dart';
import 'package:agenda_de_contatos/screens/new_contact/new_contact.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Agenda de contatos",
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => const Home(),
        "/new": (context) => NewContact(),
        "/edit": (context) => EditContact(),
      },
    ),
  );
}
