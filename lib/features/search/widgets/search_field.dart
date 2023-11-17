import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/app/core/theme/app_colors.dart';
import 'package:spotify_ui_clone/generated/l10n.dart';

class SearchField extends StatelessWidget {
  final void Function(String) onChanged;

  const SearchField({
    super.key,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      style: const TextStyle(color: AppColors.dark),
      decoration: InputDecoration(
        fillColor: AppColors.white,
        prefixIcon: const Icon(
          Icons.search,
          color: AppColors.dark,
          size: 28,
        ),
        filled: true,
        border: InputBorder.none,
        hintText: S.of(context).find_your_music,
        hintStyle: const TextStyle(
          color: AppColors.grey,
        ),
      ),
    );
  }
}
