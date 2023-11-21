import 'package:emprega_ribamar/utils/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:emprega_ribamar/widgets/custom_text_field.dart';
import 'package:emprega_ribamar/utils/form_validators.dart';

class UserScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(8), // Padding around the logo
              decoration: const BoxDecoration(
                color: Colors.white, // White corners
                shape: BoxShape.circle, // Circular shape
              ),
              child: Opacity(
                opacity: 0.5, // Semi-transparency
                child: Image.asset('lib/assets/imagens/logo-riba.png'),
              ),
            ),
            const SizedBox(height: 20),
            CustomTextField(
              controller: _emailController,
              hintText: 'Email',
              keyboardType: TextInputType.emailAddress,
              validator: validateEmail,
            ),
            const SizedBox(height: 10),
            CustomTextField(
              controller: _passwordController,
              hintText: 'Password',
              obscureText: true,
              validator: validatePassword,
            ),
            const SizedBox(height: 20),
            CustomButton(
              text: 'LOG IN',
              onPressed: () {
                // Login logic here
              },
            ),
            TextButton(
              child: const Text('Forgot password?'),
              onPressed: () {
                // Password recovery logic here
              },
            ),
          ],
        ),
      ),
    );
  }
}