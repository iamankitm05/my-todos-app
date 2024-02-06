import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double borderRadius;
  final double width;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.text,
    this.borderRadius = 6,
    this.width = double.infinity,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          foregroundColor: const MaterialStatePropertyAll(Colors.white),
          backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.deepPurple.shade400;
            }
            return Colors.deepPurple;
          }),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
        ),
        child: Text(text),
      ),
    );
  }
}
