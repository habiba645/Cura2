// presentation/screens/login.dart
import 'package:flutter/material.dart';import 'package:flutter/material.dart';
import 'package:learn_bloc/presentation/components/theme.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clr(4),
      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: clr(1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle login
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: clr(1),
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Login',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
