import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/app/core/theme/app_colors.dart';

extension XTheme on ThemeData {
  AppTextThemeExtension get xTextTheme => extension<AppTextThemeExtension>()!;
}

class AppTextThemeExtension extends ThemeExtension<AppTextThemeExtension> {
  AppTextThemeExtension({
    required this.display0,
    required this.display1,
    required this.h0,
    required this.h1,
    required this.h2,
    required this.h3,
    required this.h4,
    required this.body1,
    required this.body2,
    required this.body3,
    required this.body4,
    required this.body5,
    required this.body6,
    required this.body7,
    required this.notification0,
    required this.notification1,
    required this.message0,
    required this.message1,
    required this.titleLight,
  });

  final TextStyle display0;

  final TextStyle display1;

  final TextStyle body1;

  final TextStyle body2;

  final TextStyle body3;

  final TextStyle body4;

  final TextStyle body5;

  final TextStyle body6;

  final TextStyle body7;

  final TextStyle h0;

  final TextStyle h1;

  final TextStyle h2;

  final TextStyle h3;

  final TextStyle h4;

  final TextStyle titleLight;

  final TextStyle notification0;

  final TextStyle notification1;

  final TextStyle message0;

  final TextStyle message1;

  factory AppTextThemeExtension.initialize() => AppTextThemeExtension(
        display0: const TextStyle(
          color: AppColors.white,
          fontSize: 28,
          fontWeight: FontWeight.w800,
        ),
        display1: const TextStyle(
          color: AppColors.white2,
          fontSize: 15,
          fontWeight: FontWeight.w300,
        ),
        body1: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        body2: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: AppColors.grey[600],
        ),
        body3: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: AppColors.grey[600],
        ),
        body4: const TextStyle(
          color: AppColors.grey,
          fontWeight: FontWeight.w500,
        ),
        body5: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w500,
        ),
        body6: const TextStyle(
          color: AppColors.white,
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
        body7: const TextStyle(
          color: AppColors.white,
          fontSize: 28,
        ),
        h0: const TextStyle(
          color: AppColors.white,
          fontSize: 35,
        ),
        h1: const TextStyle(
          color: AppColors.white,
          fontSize: 25,
          fontWeight: FontWeight.w300,
        ),
        h2: const TextStyle(
          color: AppColors.white,
          fontSize: 20,
        ),
        h3: const TextStyle(
          color: AppColors.white,
          fontWeight: FontWeight.w500,
        ),
        h4: const TextStyle(
          fontSize: 18,
          color: AppColors.white,
          fontWeight: FontWeight.w500,
        ),
        titleLight: const TextStyle(
          color: Colors.grey,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
        notification0: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        notification1: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w700,
          decoration: TextDecoration.underline,
        ),
        message0: const TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
        message1: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w500,
        ),
      );

  @override
  ThemeExtension<AppTextThemeExtension> copyWith({
    TextStyle? display0,
    TextStyle? display1,
    TextStyle? body1,
    TextStyle? body2,
    TextStyle? body3,
    TextStyle? body4,
    TextStyle? body5,
    TextStyle? body6,
    TextStyle? body7,
    TextStyle? h0,
    TextStyle? h1,
    TextStyle? h2,
    TextStyle? h3,
    TextStyle? h4,
    TextStyle? titleLight,
    TextStyle? contact,
    TextStyle? date,
    TextStyle? notification0,
    TextStyle? notification1,
    TextStyle? message0,
    TextStyle? message1,
    TextStyle? message2,
  }) {
    return AppTextThemeExtension(
      display0: display0 ?? this.display0,
      display1: display1 ?? this.display1,
      body1: body1 ?? this.body1,
      body2: body2 ?? this.body2,
      body3: body3 ?? this.body3,
      body4: body4 ?? this.body4,
      body5: body5 ?? this.body5,
      body6: body6 ?? this.body6,
      body7: body7 ?? this.body7,
      h0: h0 ?? this.h0,
      h1: h1 ?? this.h1,
      h2: h2 ?? this.h2,
      h3: h3 ?? this.h3,
      h4: h4 ?? this.h4,
      titleLight: titleLight ?? this.titleLight,
      notification0: notification0 ?? this.notification0,
      notification1: notification1 ?? this.notification1,
      message0: message0 ?? this.message0,
      message1: message1 ?? this.message1,
    );
  }

  @override
  ThemeExtension<AppTextThemeExtension> lerp(
    covariant ThemeExtension<AppTextThemeExtension>? other,
    double t,
  ) {
    if (other == null || t == 0.0) return this;

    return other;
  }
}
