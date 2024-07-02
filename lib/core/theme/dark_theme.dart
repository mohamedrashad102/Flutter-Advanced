import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

ThemeData darkTheme() => ThemeData.dark().copyWith(
      appBarTheme: const AppBarTheme(
        color: AppColors.appBarBgColor,
      ),
      scaffoldBackgroundColor: AppColors.scaffoldBgColor,
    );
