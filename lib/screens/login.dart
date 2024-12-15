import 'package:flutter/material.dart';
import 'package:line_vibrations/services/auth_service.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 20),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LoginTitle(),
                  LoginButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LoginTitle extends StatelessWidget {
  const LoginTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Welcome to Line Vibrations App ✏️',
      style: TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 45, 45, 45)),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => AuthService().signInWithGoogle(),
      child: Ink(
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
          color: const Color(0xFF1A73E8),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 8,
            color: const Color.fromARGB(255, 45, 45, 45),
          ),
        ),
        child: const Center(
          child: Text(
            'Login with Google',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
