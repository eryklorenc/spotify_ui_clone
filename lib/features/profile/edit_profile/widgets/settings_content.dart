import 'package:flutter/material.dart';

class SettingsContent extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const SettingsContent({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.grey[600],
          ),
        ),
        IconButton(
          onPressed: onPressed,
          icon: const Icon(
            Icons.arrow_forward_ios,
          ),
          color: Colors.grey,
        ),
      ],
    );
  }
}
