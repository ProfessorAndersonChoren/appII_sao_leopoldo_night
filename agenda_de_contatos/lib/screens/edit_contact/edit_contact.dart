import 'package:agenda_de_contatos/model/contact.dart';

import 'package:agenda_de_contatos/screens/new_contact/components/custom_textfield.dart';
import 'package:agenda_de_contatos/store/favorite_store.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

class EditContact extends StatelessWidget {
  EditContact({super.key});

  final _nameController = TextEditingController();

  final _lastNameController = TextEditingController();

  final _emailController = TextEditingController();

  final _phoneController = MaskedTextController(mask: "+00 00 00000-0000");

  final _formKey = GlobalKey<FormState>();

  final _store = FavoriteStore();

  @override
  Widget build(BuildContext context) {
    // Argumentos
    final args = ModalRoute.of(context)!.settings.arguments as Contact;

    _nameController.text = args.name;
    _lastNameController.text = args.lastName;
    _emailController.text = args.email;
    _phoneController.text = args.phone;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Editar Nicole"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          if (_formKey.currentState!.validate()) {}
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
                    print(value!.length);
                    if (value.isEmpty) {
                      return "O número de telefone não pode ficar em branco";
                    } else if (value.length != 17) {
                      return "O número de telefone é inválido";
                    }
                    return null;
                  },
                ),
                Row(
                  children: [
                    Switch(
                      value: _store.isFavorite,
                      onChanged: (value) {
                        _store.changeState(value);
                      },
                    ),
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
