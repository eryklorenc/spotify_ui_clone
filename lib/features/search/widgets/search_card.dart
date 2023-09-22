import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/app/core/theme/app_text_theme_extension.dart';

class SearchCard extends StatelessWidget {
  final String text;
  final Color color;

  const SearchCard({
    super.key,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: const EdgeInsets.all(12),
        color: color,
        child: Text(
          text,
          style: Theme.of(context).xTextTheme.body7,
        ),
      ),
    );
  }
}
