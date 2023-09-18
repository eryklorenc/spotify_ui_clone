import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/app/core/theme/app_text_theme_extension.dart';

class AccountButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String accountInfo;
  final String sign;

  const AccountButton({
    super.key,
    required this.onPressed,
    required this.accountInfo,
    required this.sign,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          accountInfo,
          style: Theme.of(context).xTextTheme.titleLight,
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            sign,
            style: Theme.of(context).xTextTheme.notification1,
          ),
        ),
      ],
    );
  }
}
