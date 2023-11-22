import 'package:flutter/material.dart';
import 'package:emprega_ribamar/widgets/custom_text_field.dart';
import 'package:emprega_ribamar/utils/form_validators.dart';
import 'package:emprega_ribamar/utils/custom_button.dart';

class CreateUserScreen extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  CreateUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inscrever-se'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CustomTextField(
              controller: _nameController,
              hintText: 'Nome',
              validator: (String? value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Por favor, insira seu nome';
                }
                return null;
              },
            ),
            const SizedBox(height: 10),
            CustomTextField(
              controller: _emailController,
              hintText: 'Email',
              keyboardType: TextInputType.emailAddress,
              validator: validateEmail,
            ),
            const SizedBox(height: 10),
            CustomTextField(
              controller: _passwordController,
              hintText: 'Senha',
              obscureText: true,
              validator: validatePassword,
            ),
            const SizedBox(height: 10),
            CustomTextField(
              controller: _confirmPasswordController,
              hintText: 'Digite novamente a senha',
              obscureText: true,
              validator: (value) {
                if (value != _passwordController.text) {
                  return 'As senhas não coincidem';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            CustomButton(
              text: 'Inscrever-se',
              onPressed: () {
                // Implementar lógica de regsitro
              },
            ),
          ],
        ),
      ),
    );
  }
}
