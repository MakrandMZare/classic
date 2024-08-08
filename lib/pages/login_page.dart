import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
        child: Text(
          "Login Page",
          style: TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 46, 2, 207),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
