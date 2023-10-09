import 'package:flutter/material.dart';
import 'package:loginpage/TheTextfiled.dart';
import 'package:loginpage/signbutton.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernamecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  // This method for sign In
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 87, 174, 245),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                'welcom to the TB bank',
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),

              const SizedBox(
                height: 25,
              ),

              // username filed
              TheTextfiled(
                controller: usernamecontroller,
                hintText: 'write username',
                obscureText: false,
              ),
              const SizedBox(
                height: 10,
              ),
              // password filed
              TheTextfiled(
                controller: passwordcontroller,
                hintText: 'write password',
                obscureText: true,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'forgate password?',
                style: const TextStyle(color: Color.fromARGB(255, 48, 0, 0)),
              ),

              MyButton(
                onTap: signUserIn,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
