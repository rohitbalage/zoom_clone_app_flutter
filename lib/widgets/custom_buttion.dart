import 'package:flutter/material.dart';
import 'package:zoom_clone_app_flutter/utils/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
            primary: buttonColor,
            maximumSize: const Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
                side: const BorderSide(color: buttonColor),
                borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}
