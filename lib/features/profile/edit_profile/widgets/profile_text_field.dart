import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/app/core/theme/app_colors.dart';

class ProfileTextField extends StatelessWidget {
  final bool obscureText;
  final String text;
  final Icon suffixIcon;
  final TextEditingController controller;

  const ProfileTextField({
    super.key,
    required this.text,
    required this.suffixIcon,
    required this.obscureText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: text,
        labelStyle: const TextStyle(
          color: AppColors.grey,
          fontWeight: FontWeight.w500,
        ),
        filled: true,
        fillColor: AppColors.black,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.black0,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.black0,
          ),
        ),
        suffixIcon: suffixIcon,
      ),
      obscureText: obscureText,
    );
  }
}
