import 'package:flutter/material.dart';

import '../components/my_textfield.dart';

class AuthPage extends StatelessWidget {
  AuthPage({super.key});

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Icon(
              Icons.lock,
              color: Theme.of(context).colorScheme.inversePrimary,
              size: 100,
            ),
          ),
          const SizedBox(height: 50),
          Text(
            'Welcome back, you\'ve been missed.',
            style: TextStyle(
              color: Theme.of(context).colorScheme.inversePrimary,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 50),
          MyTextField(
            controller: userNameController,
            hintText: 'Username',
            obscureText: false,
          ),
          const SizedBox(height: 10),
          MyTextField(
            controller: passwordController,
            hintText: 'Password',
            obscureText: true,
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot Password?',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
