import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/app/core/theme/app_colors.dart';
import 'package:spotify_ui_clone/app/core/theme/app_text_theme_extension.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onPressed;
  final String title;

  const CustomAppBar({
    super.key,
    required this.onPressed,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      elevation: 1,
      leading: IconButton(
        onPressed: onPressed,
        icon: const Icon(
          Icons.arrow_back,
          color: AppColors.green,
        ),
      ),
      title: Text(
        title,
        style: Theme.of(context).xTextTheme.body5,
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(preferredAppBarHeight);
}

const double preferredAppBarHeight = 64;
