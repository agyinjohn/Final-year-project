import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:slam/screens/login_page.dart';
import 'package:slam/utils/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
        builder: (context, theme) => MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: theme,
              home: const LoginScreen(),
            ),
        initTheme: Themes.darkTheme);
  }
}
