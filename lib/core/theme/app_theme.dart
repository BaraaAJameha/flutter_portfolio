import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF7C4DFF);   // Example primary
  static const Color darkBg = Color(0xFF0A192F);    // Dark Navy
  static const Color lightBg = Colors.white;
  static const Color accent = Color(0xFF00E5FF);    // Electric Cyan
  static const Color text = Colors.white70;
}

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.darkBg,
    primaryColor: AppColors.primary,
    canvasColor: AppColors.darkBg,
    textTheme: const TextTheme(
      // Body text
      bodyMedium: TextStyle(
        fontFamily: 'Inter',
        fontSize: 16,
        color: AppColors.text,
      ),
      // Headings
      titleLarge: TextStyle(
        fontFamily: 'Inter',
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      titleMedium: TextStyle(
        fontFamily: 'Inter',
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      titleSmall: TextStyle(
        fontFamily: 'Inter',
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    iconTheme: const IconThemeData(
      color: AppColors.accent,
      size: 28,
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: AppColors.accent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.darkBg.withOpacity(0.8),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.accent, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.text.withOpacity(0.4)),
        borderRadius: BorderRadius.circular(8),
      ),
      hintStyle: const TextStyle(color: AppColors.text),
      labelStyle: const TextStyle(color: AppColors.text),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(AppColors.accent),
        foregroundColor: MaterialStateProperty.all(Colors.black),
        overlayColor: MaterialStateProperty.all(AppColors.accent.withOpacity(0.7)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
    ),
  );

  // Monospace style for code snippets or tech stack
  static const TextStyle codeText = TextStyle(
    fontFamily: 'JetBrainsMono',
    fontSize: 14,
    color: AppColors.accent,
  );
}
