import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/components/my_button.dart';
import 'package:flutter_firebase_auth/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              const SizedBox(
                height: 15,
              ),
              Icon(
                Icons.lock,
                size: 150,
                color: Colors.deepPurple[800],
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  "Welcome!",
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.grey[900],
                  ),
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "to",
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.grey[900],
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "AUTH",
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple[900],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              MyTextField(
                controller: emailController,
                hintText: "Enter your email",
                obscureText: false,
                isEmail: true,
              ),
              const SizedBox(
                height: 10.0,
              ),
              MyTextField(
                controller: passwordController,
                hintText: "Enter your password",
                obscureText: true,
                isEmail: false,
              ),
              const SizedBox(
                height: 25.0,
              ),
              MyButton(
                onTap: signIn,
              ),
              const SizedBox(
                height: 15.0,
              ),
              Center(
                child: Text("Forgot Password?", style: TextStyle(color: Colors.purple.shade900),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
