import 'package:flutter/material.dart';

import '../../administrator/view/home_administrator.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _loadSplashScreen();
  }

  _loadSplashScreen() async {
    // Simulate a wait time
    await Future.delayed(const Duration(seconds: 4));
    
    // Navigate to the main screen after waiting
    // ignore: use_build_context_synchronously
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const HomeAdministrator(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/image/splash_img.png', height: 200,),
            const SizedBox(height: 20,),
            const Text(
              'Office Intern',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

