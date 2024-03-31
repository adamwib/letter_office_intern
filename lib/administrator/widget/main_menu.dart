import 'package:flutter/material.dart';
import 'package:surat_app/helper/color.dart';

class MainMenu extends StatelessWidget {
  final String title;
  final String image;
  final VoidCallback onTap;
  const MainMenu({
    super.key, required this.title, required this.image, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 140,
        width: 100,
        decoration: BoxDecoration(
          color: menuColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(image, height: 64, color: Colors.white,),
              const SizedBox(height: 6,),
              Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700),)
            ],
          ),
        ),
      ),
    );
  }
}