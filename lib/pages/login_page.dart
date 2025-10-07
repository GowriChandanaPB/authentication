import 'package:authentication/components/my_button.dart';
import 'package:authentication/components/my_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
              // logo
              const Icon(
                Icons.face_3_rounded,
                size: 100,
              ),


              const SizedBox(height: 50),          
              // welcome back
              Text(
                'welcome back you\'ve been missed!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                )
              ),
          
              const SizedBox(height: 25),
              // username textfield
              MyTextfield(controller: usernameController, hintText: 'Username', obscureText: false),
              
              const SizedBox(height: 15),
              // password textfield
              MyTextfield(controller: passwordController, hintText: 'Password', obscureText: true),
              
              const SizedBox(height: 10),
              // forgot password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
          
              const SizedBox(height: 25),
              // sign in button
              MyButton(),

          
              // or continue with button
          
              // google and apple sign in button
          
              // not a member? register now
            ],
          ),
        ),
      ),
    );
  }
}