import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/app/core/theme/app_text_theme_extension.dart';
import 'package:spotify_ui_clone/generated/l10n.dart';

class AuthButton extends StatelessWidget {
  final VoidCallback onPressed;

  const AuthButton({
    super.key,
    required this.isCreatingAccount,
    required this.onPressed,
  });

  final bool isCreatingAccount;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(31),
          ),
          backgroundColor: Colors.white),
      child: Text(
        isCreatingAccount == true
            ? S.of(context).register
            : S.of(context).log_in,
        style: Theme.of(context).xTextTheme.message0,
      ),
    );
  }
}
