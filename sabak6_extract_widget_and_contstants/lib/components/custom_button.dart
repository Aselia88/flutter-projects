import 'package:flutter/material.dart';
// ignore: implementation_imports

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.icon,
    required this.text,
  });
  final IconData? icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 260,
      child: ElevatedButton(
        onPressed: () {},
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(
              width: 20,
            ),
            Text(
              text,
              style: const TextStyle(
                color: Colors.purple,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
