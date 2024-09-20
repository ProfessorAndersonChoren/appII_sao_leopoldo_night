import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:login_and_register/screens/shared/custom_text_field.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registre-se'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextField(
                controller: _emailController,
                label: 'Email',
                inputType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || !EmailValidator.validate(value)) {
                    return 'Email inválido!!!';
                  }
                  return null; // Tudo OK
                },
              ),
              CustomTextField(
                controller: _passwordController,
                label: 'Senha',
                inputType: TextInputType.visiblePassword,
                isPassword: true,
                validator: (value) {
                  if (value == null || value.length < 8) {
                    return 'Senha inválida!!!';
                  }
                  return null;
                },
              ),
              CustomTextField(
                label: 'Repita sua senha',
                inputType: TextInputType.visiblePassword,
                isPassword: true,
                action: TextInputAction.done,
                validator: (value) {
                  if (value == null || value.length < 8) {
                    return 'Senha inválida!!!';
                  } else if (value != _passwordController.text) {
                    return 'As senhas não coincidem!!!';
                  }
                  return null;
                },
                
              ),
              FilledButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // TODO Cadastrar o usuário
                  }
                },
                child: const Text('Registrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
