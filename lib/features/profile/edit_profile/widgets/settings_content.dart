import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/app/core/theme/app_colors.dart';
import 'package:spotify_ui_clone/app/core/theme/app_text_theme_extension.dart';

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
          style: Theme.of(context).xTextTheme.body3,
        ),
        IconButton(
          onPressed: onPressed,
          icon: const Icon(
            Icons.arrow_forward_ios,
          ),
          color: AppColors.grey,
        ),
      ],
    );
  }
}
