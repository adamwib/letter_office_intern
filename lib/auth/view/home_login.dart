import 'package:flutter/material.dart';
import 'package:surat_app/administrator/view/home_administrator.dart';
import 'package:surat_app/helper/color.dart';

import '../../auth/widget/text_field_login.dart';

class HomeLogin extends StatefulWidget {
  const HomeLogin({super.key});

  @override
  State<HomeLogin> createState() => _HomeLoginState();
}

class _HomeLoginState extends State<HomeLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 48),
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icon/mail.png',
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
                          backgroundColor: primaryColor,
                          shape: RoundedRectangleBorder(
                            
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeAdministrator()));
                        },
                        child: const Text("LOGIN", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),)),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
