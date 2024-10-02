import 'package:agenda_de_contatos/model/contact.dart';
import 'package:agenda_de_contatos/repository/contact_repository.dart';
import 'package:agenda_de_contatos/store/contact_store.dart';
import 'package:agenda_de_contatos/store/favorite_store.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text3/flutter_masked_text3.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:agenda_de_contatos/shared/custom_textfield.dart';
import 'package:provider/provider.dart';

class NewContact extends StatelessWidget {
  NewContact({super.key});

  final _nameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = MaskedTextController(mask: "+00 00 00000-0000");
  final _formKey = GlobalKey<FormState>();
  final _store = FavoriteStore();

  @override
  Widget build(BuildContext context) {
    final contactStore = Provider.of<ContactsStore>(context);
    final repository = Provider.of<ContactRepository>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Novo contato"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          if (_formKey.currentState!.validate()) {
            SnackBar snackBar;
            try {
              final contact = Contact(
                name: _nameController.text,
                lastName: _lastNameController.text,
                phone: _phoneController.text,
                email: _emailController.text,
                isFavorite: _store.isFavorite,
              );
              contact.id = await repository.insert(contact.toMap());
              if (contact.id != 0) {
                contactStore.add(contact);
                snackBar = SnackBar(
                    content: Text('${contact.name} cadastrado com sucesso!!!'));
              } else {
                snackBar = SnackBar(
                    content: Text(
                        'Não foi possível cadastrar o contato ${contact.name}!!!'));
              }
            } catch (e) {
              snackBar =
                  const SnackBar(content: Text('Ops. Houve um erro inesperado!!!'));
            }
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
        },
        child: const Icon(Icons.save),
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                CustomTextField(
                  label: "Nome",
                  controller: _nameController,
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "O nome não pode ficar em branco";
                    }
                    return null;
                  },
                ),
                CustomTextField(
                  label: "Sobrenome",
                  controller: _lastNameController,
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "O sobrenome não pode ficar em branco";
                    }
                    return null;
                  },
                ),
                CustomTextField(
                  label: "Email",
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "O email não pode ficar em branco";
                    } else if (value != null &&
                        !EmailValidator.validate(value)) {
                      return "O email não é válido";
                    }
                    return null;
                  },
                ),
                CustomTextField(
                  label: "Telefone",
                  controller: _phoneController,
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "O número de telefone não pode ficar em branco";
                    } else if (value != null && value.length != 17) {
                      return "O número de telefone é inválido";
                    }
                    return null;
                  },
                ),
                Row(
                  children: [
                    Observer(builder: (_) {
                      return Switch(
                        value: _store.isFavorite,
                        onChanged: (value) {
                          _store.changeState(value);
                        },
                      );
                    }),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Favorito",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
