import 'package:agenda_de_contatos/model/contact.dart';
import 'package:agenda_de_contatos/repository/contact_repository.dart';

import 'package:agenda_de_contatos/shared/custom_textfield.dart';
import 'package:agenda_de_contatos/store/favorite_store.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text3/flutter_masked_text3.dart';
import 'package:provider/provider.dart';

class EditContact extends StatelessWidget {
  EditContact({super.key});

  final _nameController = TextEditingController();

  final _lastNameController = TextEditingController();

  final _emailController = TextEditingController();

  final _phoneController = MaskedTextController(mask: "+00 00 00000-0000");

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Argumentos
    final contact = ModalRoute.of(context)!.settings.arguments as Contact;

    final store = FavoriteStore()..changeState(contact.isFavorite);
    _nameController.text = contact.name;
    _lastNameController.text = contact.lastName;
    _emailController.text = contact.email;
    _phoneController.text = contact.phone;
    final repository = Provider.of<ContactRepository>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Editar ${contact.name}"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          if (_formKey.currentState!.validate()) {
            SnackBar snackBar;
            try {
              contact.name = _nameController.text;
              contact.lastName = _lastNameController.text;
              contact.email = _emailController.text;
              contact.phone = _phoneController.text;
              contact.isFavorite = store.isFavorite;
              repository.update(contact.toMap());
              if (contact.id != 0) {
                snackBar = SnackBar(
                    content: Text('${contact.name} atualizado com sucesso!!!'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              } else {
                snackBar = SnackBar(
                    content: Text(
                        'Não foi possível atualizar o contato ${contact.name}!!!'));
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
