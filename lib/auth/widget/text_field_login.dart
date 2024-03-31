import 'package:flutter/material.dart';
import 'package:surat_app/helper/color.dart';

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
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12)
      ),
      child: TextField(
        obscureText: obs,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: hinttxt,
          hintStyle: const TextStyle(fontSize: 16, color:  primaryColor),
          prefixIcon: Icon(prefixIcon, color: primaryColor,),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
                width: 1, style: BorderStyle.none, color:  primaryColor),
          ),
        ),
      ),
    );
  }
}
