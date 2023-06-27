// ignore_for_file: prefer_const_constructors

import 'package:authscreen/components/MyText_Field.dart';
import 'package:authscreen/components/square_Tile.dart';
import 'package:flutter/material.dart';

import '../components/my_button.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //text editing controller
  final usernamecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  //sign user in
  void singuserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              SizedBox(height: 30),
              Icon(
                Icons.lock,
                size: 100,
              ),
              SizedBox(height: 50),
              //welcome text
              Text(
                'Welcome back you\' ve been missed',
                style: TextStyle(
                  color: Colors.grey[700],
                ),
              ),
              //first field
              SizedBox(height: 20),
              MyTextField(
                controller: usernamecontroller,
                hintText: 'Username',
                obscureText: false,
              ),
              //fecond field
              SizedBox(height: 20),
              MyTextField(
                controller: passwordcontroller,
                hintText: 'Password',
                obscureText: true,
              ),
              //forget password go oto the right
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forget Password',
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
              //button
              SizedBox(height: 20),
              MyButton(
                onTap: singuserIn,
              ),
              //or continue with
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
              //google and apple logo
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  //google image
                  SquareTile(
                    imagePath: 'lib/images/google.png',
                  ),
                  SizedBox(width: 10),
                  SquareTile(
                    imagePath: 'lib/images/apple.png',
                  ),
                ],
              ),
              //not member, register link
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Register now',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
