import 'dart:io';

import 'package:agenda_de_contatos/model/contact.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final Contact contact;
  const ListItem({
    super.key,
    required this.contact,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(
        icon: Icon(
          (contact.isFavorite) ? Icons.star : Icons.star_outline,
          color: Theme.of(context).colorScheme.secondary,
        ),
        iconSize: 24,
        onPressed: () {
          
        },
      ),
      title: Row(
        children: [
          ClipOval(
            child: Image.file(
              File(
                (contact.photoPath),
              ),
              width: 30,
              height: 30,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                contact.name,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                contact.phone,
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ],
          ),
        ],
      ),
      trailing: IconButton(
        icon: const Icon(Icons.chevron_right),
        onPressed: () {
          Navigator.pushNamed(
            context,
            "/details",
            arguments: contact,
          );
        },
        iconSize: 16,
      ),
    );
  }
}
