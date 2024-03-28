import 'package:flutter/material.dart';

class TextFieldLogin extends StatelessWidget {
  final String hinttxt;
  final bool obs;
  final IconData prefixIcon;

  const TextFieldLogin({
    Key? key, // Correct the parameter name
    required this.hinttxt, required this.obs, required this.prefixIcon, // Make username parameter required
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: TextField(
        obscureText: obs,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: hinttxt,
          hintStyle: const TextStyle(fontSize: 16, color:  Color.fromARGB(255, 76, 86, 224)),
          prefixIcon: Icon(prefixIcon, color: const Color.fromARGB(255, 76, 86, 224),),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
                width: 1, style: BorderStyle.none, color:  Color.fromARGB(255, 76, 86, 224)),
          ),
        ),
      ),
    );
  }
}
