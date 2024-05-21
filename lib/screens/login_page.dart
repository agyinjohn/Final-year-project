import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:slam/utils/toggle_theme.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    Size size = MediaQuery.of(context).size;
    return ThemeSwitchingArea(
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.transparent, actions: [
          ThemeSwitcher(
            clipper: const ThemeSwitcherBoxClipper(),
            builder: (context) => IconButton(
              onPressed: () {
                CommonFunctions.toggleTheme(context: context);
              },
              icon: Icon(
                ThemeModelInheritedNotifier.of(context).theme.brightness ==
                        Brightness.light
                    ? Icons.dark_mode
                    : Icons.light_mode,
              ),
            ),
          ),
        ]),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: size.height * 0.7,
                width: size.width * 0.4,
                decoration: BoxDecoration(
                  color: theme.cardColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
