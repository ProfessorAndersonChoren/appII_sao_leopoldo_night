import 'package:agenda_de_contatos/model/contact.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:slideable/slideable.dart';

class ListItem extends StatelessWidget {
  final Contact contact;
  const ListItem({
    super.key,
    required this.contact,
  });

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Slideable(
        items: <ActionItems>[
          ActionItems(
            icon: const Icon(
              Icons.edit,
              color: Colors.orange,
            ),
            onPress: () {},
            backgroudColor: Colors.transparent,
          ),
          ActionItems(
            icon: const Icon(
              Icons.delete,
              color: Colors.red,
            ),
            onPress: () {},
            backgroudColor: Colors.transparent,
          ),
        ],
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(8),
          ),
          child: ListElement(contact: contact),
        ),
      );
    });
  }
}

class ListElement extends StatelessWidget {
  const ListElement({
    super.key,
    required this.contact,
  });

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Observer(builder: (_) {
        return Icon(
          (contact.isFavorite) ? Icons.star : Icons.star_outline,
          color: Theme.of(context).colorScheme.secondary,
        );
      }),
      title: Row(
        children: [
          CircleAvatar(
            backgroundColor: Theme.of(context).colorScheme.secondary,
            child: Text(
              contact.name.substring(0, 1).toUpperCase(),
              style: TextStyle(
                color: Colors.white,
              ),
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
    );
  }
}
