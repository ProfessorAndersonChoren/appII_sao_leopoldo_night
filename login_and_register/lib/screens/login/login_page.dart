import 'package:flutter/material.dart';
import 'package:login_and_register/screens/shared/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seja bem-vindo'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(
              label: 'Email',
              inputType: TextInputType.emailAddress,
            ),
            CustomTextField(
              label: 'Senha',
              inputType: TextInputType.visiblePassword,
              isPassword: true,
            ),
            FilledButton(
              onPressed: () {},
              child: Text('Entrar'),
            ),
          ],
        ),
      ),
    );
  }
}
