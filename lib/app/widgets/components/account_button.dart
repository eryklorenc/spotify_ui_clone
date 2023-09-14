import 'package:flutter/material.dart';

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
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            sign,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w700,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
