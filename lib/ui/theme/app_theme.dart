import 'package:flutter/material.dart';
import 'app_colors.dart';

final theme = ThemeData(
  useMaterial3: true,
  fontFamily: 'Inter',
  primaryColor: AppColors.black,
  scaffoldBackgroundColor: AppColors.background,
  colorScheme: const ColorScheme.light(
    primary: AppColors.black,
    onPrimary: AppColors.white,
    surface: AppColors.white,
    onSurface: AppColors.black,
  ),
);

