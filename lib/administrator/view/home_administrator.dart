import 'package:flutter/material.dart';

import '../widget/text_field_login.dart';

class HomeAdministrator extends StatefulWidget {
  const HomeAdministrator({super.key});

  @override
  State<HomeAdministrator> createState() => _HomeAdministratorState();
}

class _HomeAdministratorState extends State<HomeAdministrator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 170, 175, 255),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 48),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/image/login.png',
                height: 160,
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                "Welcome back",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "Login to your account",
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 24,
              ),
              const TextFieldLogin(
                obs: false,
                hinttxt: 'Username',
                prefixIcon: Icons.people,
              ),
              const SizedBox(
                height: 16,
              ),
              const TextFieldLogin(
                obs: true,
                hinttxt: 'Password',
                prefixIcon: Icons.lock,
              ),
              const SizedBox(
                height: 36,
              ),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 76, 86, 224),
                      shape: RoundedRectangleBorder(
                        
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text("LOGIN", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
